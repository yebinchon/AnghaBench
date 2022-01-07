
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;
struct tm {int dummy; } ;


 int timesub (int const*,long,struct tm*) ;

struct tm * gmtime_r(const time_t* timep, struct tm *tm)
{
 timesub(timep, 0L, tm);
 return tm;
}
