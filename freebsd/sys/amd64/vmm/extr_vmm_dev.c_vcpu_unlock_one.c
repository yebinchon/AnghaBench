
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmmdev_softc {int vm; } ;
typedef enum vcpu_state { ____Placeholder_vcpu_state } vcpu_state ;


 int VCPU_FROZEN ;
 int VCPU_IDLE ;
 int panic (char*,int ,int,int) ;
 int vcpu_get_state (int ,int,int *) ;
 int vcpu_set_state (int ,int,int ,int) ;
 int vm_name (int ) ;

__attribute__((used)) static void
vcpu_unlock_one(struct vmmdev_softc *sc, int vcpu)
{
 enum vcpu_state state;

 state = vcpu_get_state(sc->vm, vcpu, ((void*)0));
 if (state != VCPU_FROZEN) {
  panic("vcpu %s(%d) has invalid state %d", vm_name(sc->vm),
      vcpu, state);
 }

 vcpu_set_state(sc->vm, vcpu, VCPU_IDLE, 0);
}
