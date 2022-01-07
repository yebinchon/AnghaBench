
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tm {int tm_year; int tm_yday; int tm_hour; int tm_min; long tm_sec; } ;


 int DAY ;
 int HOUR ;
 int MINUTE ;
 int TM_YEAR_ORIGIN ;

__attribute__((used)) static long
difftm (struct tm *a, struct tm *b)
{
 int ay = a->tm_year + (TM_YEAR_ORIGIN - 1);
 int by = b->tm_year + (TM_YEAR_ORIGIN - 1);
 int days = (

  a->tm_yday - b->tm_yday

  + ((ay >> 2) - (by >> 2))
  - (ay/100 - by/100)
  + ((ay/100 >> 2) - (by/100 >> 2))

  + (long)(ay-by) * 365
  );
 return (days * DAY + (a->tm_hour - b->tm_hour) * HOUR
     + (a->tm_min - b->tm_min) * MINUTE
     + (a->tm_sec - b->tm_sec));
}
