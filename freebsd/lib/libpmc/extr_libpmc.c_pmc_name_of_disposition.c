
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum pmc_disp { ____Placeholder_pmc_disp } pmc_disp ;


 int EINVAL ;
 int PMC_DISP_FIRST ;
 int PMC_DISP_LAST ;
 int errno ;
 char const** pmc_disposition_names ;

const char *
pmc_name_of_disposition(enum pmc_disp pd)
{
 if ((int) pd >= PMC_DISP_FIRST &&
     pd <= PMC_DISP_LAST)
  return (pmc_disposition_names[pd]);

 errno = EINVAL;
 return (((void*)0));
}
