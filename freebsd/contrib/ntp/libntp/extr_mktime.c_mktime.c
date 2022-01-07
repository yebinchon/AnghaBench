
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;
struct tm {int dummy; } ;


 int time1 (struct tm*) ;

time_t
mktime(
 struct tm * tmp
 )
{
 return time1(tmp);
}
