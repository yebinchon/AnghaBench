
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct printf_info {scalar_t__ is_long_double; } ;


 int PA_DOUBLE ;
 int PA_FLAG_LONG_DOUBLE ;
 int assert (int) ;

int
__printf_arginfo_float(const struct printf_info *pi, size_t n, int *argt)
{
 assert (n > 0);
 argt[0] = PA_DOUBLE;
 if (pi->is_long_double)
  argt[0] |= PA_FLAG_LONG_DOUBLE;
 return (1);
}
