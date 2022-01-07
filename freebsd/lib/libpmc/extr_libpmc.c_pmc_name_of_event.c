
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef enum pmc_event { ____Placeholder_pmc_event } pmc_event ;
struct TYPE_2__ {int pm_cputype; } ;


 int EINVAL ;
 char* _pmc_name_of_event (int,int ) ;
 TYPE_1__ cpu_info ;
 int errno ;

const char *
pmc_name_of_event(enum pmc_event pe)
{
 const char *n;

 if ((n = _pmc_name_of_event(pe, cpu_info.pm_cputype)) != ((void*)0))
  return (n);

 errno = EINVAL;
 return (((void*)0));
}
