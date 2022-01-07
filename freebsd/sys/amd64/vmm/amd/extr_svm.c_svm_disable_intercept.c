
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct svm_softc {int dummy; } ;


 int svm_set_intercept (struct svm_softc*,int,int,int ,int ) ;

__attribute__((used)) static __inline void
svm_disable_intercept(struct svm_softc *sc, int vcpu, int off, uint32_t bitmask)
{

 svm_set_intercept(sc, vcpu, off, bitmask, 0);
}
