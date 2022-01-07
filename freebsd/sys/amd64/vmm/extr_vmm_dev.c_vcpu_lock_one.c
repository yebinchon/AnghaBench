
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmmdev_softc {int vm; } ;


 int EINVAL ;
 int VCPU_FROZEN ;
 int vcpu_set_state (int ,int,int ,int) ;
 int vm_get_maxcpus (int ) ;

__attribute__((used)) static int
vcpu_lock_one(struct vmmdev_softc *sc, int vcpu)
{
 int error;

 if (vcpu < 0 || vcpu >= vm_get_maxcpus(sc->vm))
  return (EINVAL);

 error = vcpu_set_state(sc->vm, vcpu, VCPU_FROZEN, 1);
 return (error);
}
