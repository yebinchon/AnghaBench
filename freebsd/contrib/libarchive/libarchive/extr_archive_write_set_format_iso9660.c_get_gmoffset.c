
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tm {scalar_t__ tm_isdst; } ;


 int _get_timezone (long*) ;
 long _timezone ;
 long timezone ;

__attribute__((used)) static long
get_gmoffset(struct tm *tm)
{
 long offset;






 offset = timezone;

 offset *= -1;
 if (tm->tm_isdst)
  offset += 3600;
 return (offset);
}
