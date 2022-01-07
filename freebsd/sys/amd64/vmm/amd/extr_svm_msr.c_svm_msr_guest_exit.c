
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct svm_softc {int dummy; } ;


 size_t IDX_MSR_CSTAR ;
 size_t IDX_MSR_LSTAR ;
 size_t IDX_MSR_SF_MASK ;
 size_t IDX_MSR_STAR ;
 int MSR_CSTAR ;
 int MSR_LSTAR ;
 int MSR_SF_MASK ;
 int MSR_STAR ;
 int * host_msrs ;
 int wrmsr (int ,int ) ;

void
svm_msr_guest_exit(struct svm_softc *sc, int vcpu)
{



 wrmsr(MSR_LSTAR, host_msrs[IDX_MSR_LSTAR]);
 wrmsr(MSR_CSTAR, host_msrs[IDX_MSR_CSTAR]);
 wrmsr(MSR_STAR, host_msrs[IDX_MSR_STAR]);
 wrmsr(MSR_SF_MASK, host_msrs[IDX_MSR_SF_MASK]);


}
