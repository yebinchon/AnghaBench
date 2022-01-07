
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;
struct tm {int dummy; } ;


 struct tm* gmtsub (int const* const,long const,int *) ;
 int tm ;

struct tm *
offtime(const time_t *const timep, const long offset)
{
 return gmtsub(timep, offset, &tm);
}
