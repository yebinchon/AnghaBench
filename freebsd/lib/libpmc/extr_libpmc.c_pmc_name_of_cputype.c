
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef enum pmc_cputype { ____Placeholder_pmc_cputype } pmc_cputype ;
struct TYPE_3__ {int pm_cputype; char const* pm_name; } ;


 int EINVAL ;
 size_t PMC_TABLE_SIZE (TYPE_1__*) ;
 int errno ;
 TYPE_1__* pmc_cputype_names ;

const char *
pmc_name_of_cputype(enum pmc_cputype cp)
{
 size_t n;

 for (n = 0; n < PMC_TABLE_SIZE(pmc_cputype_names); n++)
  if (cp == pmc_cputype_names[n].pm_cputype)
   return (pmc_cputype_names[n].pm_name);

 errno = EINVAL;
 return (((void*)0));
}
