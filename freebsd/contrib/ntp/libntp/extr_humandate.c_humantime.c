
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;
struct tm {int tm_hour; int tm_min; int tm_sec; } ;


 int LIB_BUFLENGTH ;
 int LIB_GETBUF (char*) ;
 struct tm* localtime (int *) ;
 int snprintf (char*,int ,char*,int,int,int) ;

const char *
humantime(
 time_t cursec
 )
{
 char * bp;
 struct tm * tm;

 tm = localtime(&cursec);
 if (!tm)
  return "--:--:--";

 LIB_GETBUF(bp);

 snprintf(bp, LIB_BUFLENGTH, "%02d:%02d:%02d",
   tm->tm_hour, tm->tm_min, tm->tm_sec);

 return bp;
}
