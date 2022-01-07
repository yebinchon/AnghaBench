
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;
struct tm {int tm_mday; size_t tm_mon; int tm_hour; int tm_min; int tm_sec; } ;


 int LIB_BUFLENGTH ;
 int LIB_GETBUF (char*) ;
 struct tm* localtime (int *) ;
 char** months ;
 int snprintf (char*,int ,char*,int,char*,int,int,int) ;
 int time (int *) ;

const char *
humanlogtime(void)
{
 char * bp;
 time_t cursec;
 struct tm * tm;

 cursec = time(((void*)0));
 tm = localtime(&cursec);
 if (!tm)
  return "-- --- --:--:--";

 LIB_GETBUF(bp);

 snprintf(bp, LIB_BUFLENGTH, "%2d %s %02d:%02d:%02d",
   tm->tm_mday, months[tm->tm_mon],
   tm->tm_hour, tm->tm_min, tm->tm_sec);

 return bp;
}
