
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef size_t u_int ;
struct trapframe {int dummy; } ;


 int FILTER_HANDLED ;
 size_t PCPU_GET (int ) ;
 int PMU_OVSR_C ;
 int atomic_add_32 (int *,int) ;
 int * ccnt_hi ;
 int cp15_pmovsr_get () ;
 int cp15_pmovsr_set (int) ;
 int cpuid ;
 int pmc_intr (struct trapframe*) ;
 int stub1 (struct trapframe*) ;

__attribute__((used)) static int
pmu_intr(void *arg)
{



 uint32_t r;
 r = 1;
 return (FILTER_HANDLED);
}
