
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ pm_amd_config; } ;
struct TYPE_4__ {TYPE_1__ pm_amd; } ;
struct pmc_op_pmcallocate {int pm_caps; TYPE_2__ pm_md; } ;
typedef enum pmc_event { ____Placeholder_pmc_event } pmc_event ;


 int PMC_CAP_READ ;
 int PMC_EV_TSC_TSC ;

__attribute__((used)) static int
tsc_allocate_pmc(enum pmc_event pe, char *ctrspec,
    struct pmc_op_pmcallocate *pmc_config)
{
 if (pe != PMC_EV_TSC_TSC)
  return (-1);


 if (ctrspec && *ctrspec != '\0')
  return (-1);

 pmc_config->pm_md.pm_amd.pm_amd_config = 0;
 pmc_config->pm_caps |= PMC_CAP_READ;

 return (0);
}
