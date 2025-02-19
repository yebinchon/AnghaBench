
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int time_t ;
typedef enum DSTMODE { ____Placeholder_DSTMODE } DSTMODE ;
struct TYPE_2__ {scalar_t__ tm_isdst; } ;


 int DAY ;
 int DSTmaybe ;
 int DSTon ;
 int EPOCH ;
 int HOUR ;
 int MINUTE ;
 TYPE_1__* localtime (int*) ;

__attribute__((used)) static time_t
Convert(time_t Month, time_t Day, time_t Year,
 time_t Hours, time_t Minutes, time_t Seconds,
 time_t Timezone, enum DSTMODE DSTmode)
{
 signed char DaysInMonth[12] = {
  31, 0, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31
 };
 time_t Julian;
 int i;

 if (Year < 69)
  Year += 2000;
 else if (Year < 100)
  Year += 1900;
 DaysInMonth[1] = Year % 4 == 0 && (Year % 100 != 0 || Year % 400 == 0)
     ? 29 : 28;


 if (Year < EPOCH || Year > 2038
     || Month < 1 || Month > 12

     || Day < 1 || Day > DaysInMonth[(int)--Month]
     || Hours < 0 || Hours > 23
     || Minutes < 0 || Minutes > 59
     || Seconds < 0 || Seconds > 59)
  return -1;

 Julian = Day - 1;
 for (i = 0; i < Month; i++)
  Julian += DaysInMonth[i];
 for (i = EPOCH; i < Year; i++)
  Julian += 365 + (i % 4 == 0);
 Julian *= DAY;
 Julian += Timezone;
 Julian += Hours * HOUR + Minutes * MINUTE + Seconds;
 if (DSTmode == DSTon
     || (DSTmode == DSTmaybe && localtime(&Julian)->tm_isdst))
  Julian -= HOUR;
 return Julian;
}
