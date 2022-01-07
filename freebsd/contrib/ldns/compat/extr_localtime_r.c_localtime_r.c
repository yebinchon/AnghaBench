
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;
struct tm {int dummy; } ;


 struct tm* localtime (int const*) ;

struct tm *localtime_r(const time_t *timep, struct tm *result)
{

 *result = *localtime(timep);
 return result;
}
