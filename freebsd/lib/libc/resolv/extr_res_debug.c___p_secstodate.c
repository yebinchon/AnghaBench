
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
typedef int time_t ;
struct tm {int tm_year; int tm_mon; int tm_mday; int tm_sec; int tm_min; int tm_hour; } ;


 struct tm* gmtime (int *) ;
 struct tm* gmtime_r (int *,struct tm*) ;
 char* p_secstodate_output ;
 int sprintf (char*,char*,int,int,int,int ,int ,int ) ;

char *
p_secstodate (u_long secs) {
 char *output = p_secstodate_output;
 time_t clock = secs;
 struct tm *time;





 time = gmtime(&clock);

 time->tm_year += 1900;
 time->tm_mon += 1;
 sprintf(output, "%04d%02d%02d%02d%02d%02d",
  time->tm_year, time->tm_mon, time->tm_mday,
  time->tm_hour, time->tm_min, time->tm_sec);
 return (output);
}
