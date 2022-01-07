
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef enum pmc_class { ____Placeholder_pmc_class } pmc_class ;
struct TYPE_3__ {int pm_class; char const* pm_name; } ;


 int EINVAL ;
 size_t PMC_TABLE_SIZE (TYPE_1__*) ;
 int errno ;
 TYPE_1__* pmc_class_names ;

const char *
pmc_name_of_class(enum pmc_class pc)
{
 size_t n;

 for (n = 0; n < PMC_TABLE_SIZE(pmc_class_names); n++)
  if (pc == pmc_class_names[n].pm_class)
   return (pmc_class_names[n].pm_name);

 errno = EINVAL;
 return (((void*)0));
}
