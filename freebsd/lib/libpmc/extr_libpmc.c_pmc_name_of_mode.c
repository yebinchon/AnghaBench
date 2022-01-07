
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum pmc_mode { ____Placeholder_pmc_mode } pmc_mode ;


 int EINVAL ;
 int PMC_MODE_FIRST ;
 int PMC_MODE_LAST ;
 int errno ;
 char const** pmc_mode_names ;

const char *
pmc_name_of_mode(enum pmc_mode pm)
{
 if ((int) pm >= PMC_MODE_FIRST &&
     pm <= PMC_MODE_LAST)
  return (pmc_mode_names[pm]);

 errno = EINVAL;
 return (((void*)0));
}
