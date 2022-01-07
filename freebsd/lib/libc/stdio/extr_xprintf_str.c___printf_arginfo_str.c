
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct printf_info {char spec; scalar_t__ is_long; } ;


 int PA_STRING ;
 int PA_WSTRING ;
 int assert (int) ;

int
__printf_arginfo_str(const struct printf_info *pi, size_t n, int *argt)
{

 assert (n > 0);
 if (pi->is_long || pi->spec == 'C')
  argt[0] = PA_WSTRING;
 else
  argt[0] = PA_STRING;
 return (1);
}
