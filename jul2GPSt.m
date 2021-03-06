function [week,sec_of_week] = jul2GPSt(julday)
% GPS_TIME   Conversion of Julian Day number to GPS week and
%	     Seconds of Week reckoned from Saturday midnight

% Written by Kai Borre
% May 20, 1996

    a = floor(julday+.5);
    b = a+1537;
    c = floor((b-122.1)/365.25);
    e = floor(365.25*c);
    f = floor((b-e)/30.6001);
    d = b-e-floor(30.6001*f)+rem(julday+.5,1);

    % We add +1 as the GPS week starts at Saturday midnight    
    day_of_week = rem(floor(julday+.5),7)+1;
    if day_of_week == 7
        day_of_week = 0;
    end 
    
    week = floor((julday-2444244.5)/7);
    sec_of_week = (rem(d,1)+day_of_week)*86400;
        
%%%%%%% end gps_time.m	%%%%%%%%%%%%%

