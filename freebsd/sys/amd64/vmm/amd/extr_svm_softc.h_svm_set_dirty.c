
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct svm_vcpu {int dirty; } ;
struct svm_softc {int dummy; } ;


 struct svm_vcpu* svm_get_vcpu (struct svm_softc*,int) ;

__attribute__((used)) static __inline void
svm_set_dirty(struct svm_softc *sc, int vcpu, uint32_t dirtybits)
{
        struct svm_vcpu *vcpustate;

        vcpustate = svm_get_vcpu(sc, vcpu);

        vcpustate->dirty |= dirtybits;
}
