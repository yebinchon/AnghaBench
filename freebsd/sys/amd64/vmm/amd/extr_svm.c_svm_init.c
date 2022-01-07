
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned long gen; scalar_t__ num; } ;


 int ENXIO ;
 int MAXCPU ;
 int VMCB_CACHE_DEFAULT ;
 TYPE_1__* asid ;
 int check_svm_features () ;
 scalar_t__ nasid ;
 int smp_rendezvous (int *,int ,int *,int *) ;
 int svm_available () ;
 int svm_enable ;
 int svm_msr_init () ;
 int svm_npt_init (int) ;
 int vmcb_clean ;

__attribute__((used)) static int
svm_init(int ipinum)
{
 int error, cpu;

 if (!svm_available())
  return (ENXIO);

 error = check_svm_features();
 if (error)
  return (error);

 vmcb_clean &= VMCB_CACHE_DEFAULT;

 for (cpu = 0; cpu < MAXCPU; cpu++) {






  asid[cpu].gen = ~0UL;
  asid[cpu].num = nasid - 1;
 }

 svm_msr_init();
 svm_npt_init(ipinum);


 smp_rendezvous(((void*)0), svm_enable, ((void*)0), ((void*)0));

 return (0);
}
