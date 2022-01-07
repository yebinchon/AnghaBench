
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct vm {int dummy; } ;
typedef int cpuset_t ;


 int CPU_CLR (int,int *) ;
 int CPU_FFS (int *) ;
 int IOART_DELEXINT ;
 int IOART_DELFIXED ;
 int IOART_DELLOPRI ;
 int VM_CTR1 (struct vm*,char*,int) ;
 int lapic_set_intr (struct vm*,int,int,int) ;
 int vlapic_calcdest (struct vm*,int *,int ,int,int,int) ;
 int vm_inject_extint (struct vm*,int) ;

void
vlapic_deliver_intr(struct vm *vm, bool level, uint32_t dest, bool phys,
    int delmode, int vec)
{
 bool lowprio;
 int vcpuid;
 cpuset_t dmask;

 if (delmode != IOART_DELFIXED &&
     delmode != IOART_DELLOPRI &&
     delmode != IOART_DELEXINT) {
  VM_CTR1(vm, "vlapic intr invalid delmode %#x", delmode);
  return;
 }
 lowprio = (delmode == IOART_DELLOPRI);






 vlapic_calcdest(vm, &dmask, dest, phys, lowprio, 0);

 while ((vcpuid = CPU_FFS(&dmask)) != 0) {
  vcpuid--;
  CPU_CLR(vcpuid, &dmask);
  if (delmode == IOART_DELEXINT) {
   vm_inject_extint(vm, vcpuid);
  } else {
   lapic_set_intr(vm, vcpuid, vec, level);
  }
 }
}
