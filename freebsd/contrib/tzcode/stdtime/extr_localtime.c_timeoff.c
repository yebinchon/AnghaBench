
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;
struct tm {scalar_t__ tm_isdst; } ;


 int gmtsub ;
 int time1 (struct tm* const,int ,long const) ;

time_t
timeoff(struct tm *const tmp, const long offset)
{
 if (tmp != ((void*)0))
  tmp->tm_isdst = 0;
 return time1(tmp, gmtsub, offset);
}
