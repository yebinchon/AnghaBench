
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct printf_info {char spec; scalar_t__ is_long; } ;


 int PA_INT ;
 int PA_WCHAR ;
 int assert (int) ;

int
__printf_arginfo_chr(const struct printf_info *pi, size_t n, int *argt)
{

 assert (n > 0);
 if (pi->is_long || pi->spec == 'C')
  argt[0] = PA_WCHAR;
 else
  argt[0] = PA_INT;
 return (1);
}
