
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum pmc_class { ____Placeholder_pmc_class } pmc_class ;


 int* pmc_mdep_class_list ;
 size_t pmc_mdep_class_list_size ;

__attribute__((used)) static int
pmc_mdep_is_compatible_class(enum pmc_class pc)
{
 size_t n;

 for (n = 0; n < pmc_mdep_class_list_size; n++)
  if (pmc_mdep_class_list[n] == pc)
   return (1);
 return (0);
}
