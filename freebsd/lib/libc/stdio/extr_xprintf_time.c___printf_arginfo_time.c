
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct printf_info {int dummy; } ;


 int PA_POINTER ;
 int assert (int) ;

int
__printf_arginfo_time(const struct printf_info *pi, size_t n, int *argt)
{

 assert(n >= 1);
 argt[0] = PA_POINTER;
 return (1);
}
