
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm {int maxcpus; int rendezvous_mtx; int (* rendezvous_func ) (struct vm*,int,int ) ;int rendezvous_done_cpus; int rendezvous_req_cpus; int rendezvous_arg; int active_cpus; } ;


 int CPU_AND (int *,int *) ;
 scalar_t__ CPU_CMP (int *,int *) ;
 scalar_t__ CPU_ISSET (int,int *) ;
 int CPU_SET (int,int *) ;
 int KASSERT (int,char*) ;
 int RENDEZVOUS_CTR0 (struct vm*,int,char*) ;
 int VCPU_CTR0 (struct vm*,int,char*) ;
 int mtx_lock (int *) ;
 int mtx_sleep (int (*) (struct vm*,int,int ),int *,int ,char*,int ) ;
 int mtx_unlock (int *) ;
 int stub1 (struct vm*,int,int ) ;
 int wakeup (int (*) (struct vm*,int,int )) ;

__attribute__((used)) static void
vm_handle_rendezvous(struct vm *vm, int vcpuid)
{

 KASSERT(vcpuid == -1 || (vcpuid >= 0 && vcpuid < vm->maxcpus),
     ("vm_handle_rendezvous: invalid vcpuid %d", vcpuid));

 mtx_lock(&vm->rendezvous_mtx);
 while (vm->rendezvous_func != ((void*)0)) {

  CPU_AND(&vm->rendezvous_req_cpus, &vm->active_cpus);

  if (vcpuid != -1 &&
      CPU_ISSET(vcpuid, &vm->rendezvous_req_cpus) &&
      !CPU_ISSET(vcpuid, &vm->rendezvous_done_cpus)) {
   VCPU_CTR0(vm, vcpuid, "Calling rendezvous func");
   (*vm->rendezvous_func)(vm, vcpuid, vm->rendezvous_arg);
   CPU_SET(vcpuid, &vm->rendezvous_done_cpus);
  }
  if (CPU_CMP(&vm->rendezvous_req_cpus,
      &vm->rendezvous_done_cpus) == 0) {
   VCPU_CTR0(vm, vcpuid, "Rendezvous completed");
   vm->rendezvous_func = ((void*)0);
   wakeup(&vm->rendezvous_func);
   break;
  }
  RENDEZVOUS_CTR0(vm, vcpuid, "Wait for rendezvous completion");
  mtx_sleep(&vm->rendezvous_func, &vm->rendezvous_mtx, 0,
      "vmrndv", 0);
 }
 mtx_unlock(&vm->rendezvous_mtx);
}
