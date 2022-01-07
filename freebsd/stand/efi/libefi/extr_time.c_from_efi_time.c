
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ time_t ;
struct TYPE_3__ {int Year; int Month; int Day; int Hour; int Minute; int Second; int TimeZone; } ;
typedef TYPE_1__ EFI_TIME ;


 int** CumulativeDays ;
 int EFI_UNSPECIFIED_TIMEZONE ;
 int SECSPERDAY ;
 int SECSPERHOUR ;
 size_t isleap (int) ;

time_t
from_efi_time(EFI_TIME *ETime)
{
 time_t UTime;
 int Year;




 if (ETime->Year < 1998 || ETime->Year > 2099 ||
     ETime->Month == 0 || ETime->Month > 12 ||
     ETime->Day == 0 || ETime->Month > 31 ||
     ETime->Hour > 23 || ETime->Minute > 59 ||
     ETime->Second > 59 || ETime->TimeZone < -1440 ||
     (ETime->TimeZone > 1440 && ETime->TimeZone != 2047)) {
  return (0);
 }




 UTime = 0;
 for (Year = 1970; Year != ETime->Year; ++Year) {
  UTime += (CumulativeDays[isleap(Year)][13] * SECSPERDAY);
 }






 UTime += (CumulativeDays[isleap(ETime->Year)][ETime->Month] *
     SECSPERDAY);







 UTime += (((ETime->Day > 0) ? ETime->Day-1:0) * SECSPERDAY);




 UTime += (ETime->Hour * SECSPERHOUR);




 UTime += (ETime->Minute * 60);




 UTime += ETime->Second;





 if (ETime->TimeZone != EFI_UNSPECIFIED_TIMEZONE) {



  UTime += (ETime->TimeZone * 60);
 }

 return (UTime);
}
