
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;
struct tm {int dummy; } ;


 struct tm* gmtime (int const*) ;

struct tm *gmtime_r(const time_t *timep, struct tm *result)
{

 *result = *gmtime(timep);
 return result;
}
