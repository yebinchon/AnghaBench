
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct vmmdev_softc {int vm; } ;


 int vcpu_unlock_one (struct vmmdev_softc*,int) ;
 int vm_get_maxcpus (int ) ;

__attribute__((used)) static void
vcpu_unlock_all(struct vmmdev_softc *sc)
{
 int vcpu;
 uint16_t maxcpus;

 maxcpus = vm_get_maxcpus(sc->vm);
 for (vcpu = 0; vcpu < maxcpus; vcpu++)
  vcpu_unlock_one(sc, vcpu);
}
