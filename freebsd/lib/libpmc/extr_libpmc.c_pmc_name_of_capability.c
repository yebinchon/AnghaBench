
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum pmc_caps { ____Placeholder_pmc_caps } pmc_caps ;


 int EINVAL ;
 int PMC_CAP_FIRST ;
 int PMC_CAP_LAST ;
 int errno ;
 int ffs (int) ;
 char const** pmc_capability_names ;

const char *
pmc_name_of_capability(enum pmc_caps cap)
{
 int i;





 if ((cap & (cap - 1)) || cap < PMC_CAP_FIRST ||
     cap > PMC_CAP_LAST) {
  errno = EINVAL;
  return (((void*)0));
 }

 i = ffs(cap);
 return (pmc_capability_names[i - 1]);
}
