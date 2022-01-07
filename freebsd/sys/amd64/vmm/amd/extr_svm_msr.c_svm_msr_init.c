
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t IDX_MSR_CSTAR ;
 size_t IDX_MSR_LSTAR ;
 size_t IDX_MSR_SF_MASK ;
 size_t IDX_MSR_STAR ;
 int MSR_CSTAR ;
 int MSR_LSTAR ;
 int MSR_SF_MASK ;
 int MSR_STAR ;
 int * host_msrs ;
 int rdmsr (int ) ;

void
svm_msr_init(void)
{




 host_msrs[IDX_MSR_LSTAR] = rdmsr(MSR_LSTAR);
 host_msrs[IDX_MSR_CSTAR] = rdmsr(MSR_CSTAR);
 host_msrs[IDX_MSR_STAR] = rdmsr(MSR_STAR);
 host_msrs[IDX_MSR_SF_MASK] = rdmsr(MSR_SF_MASK);
}
