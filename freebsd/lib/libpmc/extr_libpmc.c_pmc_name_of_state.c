
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum pmc_state { ____Placeholder_pmc_state } pmc_state ;


 int EINVAL ;
 int PMC_STATE_FIRST ;
 int PMC_STATE_LAST ;
 int errno ;
 char const** pmc_state_names ;

const char *
pmc_name_of_state(enum pmc_state ps)
{
 if ((int) ps >= PMC_STATE_FIRST &&
     ps <= PMC_STATE_LAST)
  return (pmc_state_names[ps]);

 errno = EINVAL;
 return (((void*)0));
}
