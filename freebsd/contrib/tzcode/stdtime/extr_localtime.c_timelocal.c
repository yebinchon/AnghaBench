
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;
struct tm {int tm_isdst; } ;


 int mktime (struct tm* const) ;

time_t
timelocal(struct tm *const tmp)
{
 if (tmp != ((void*)0))
  tmp->tm_isdst = -1;
 return mktime(tmp);
}
