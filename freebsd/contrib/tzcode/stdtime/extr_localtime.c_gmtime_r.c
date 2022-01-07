
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;
struct tm {int dummy; } ;


 struct tm* gmtsub (int const* const,long,struct tm*) ;

struct tm *
gmtime_r(const time_t *const timep, struct tm *tmp)
{
 return gmtsub(timep, 0L, tmp);
}
