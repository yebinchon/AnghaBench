
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct vmstate {TYPE_1__* ph; } ;
typedef int off_t ;
struct TYPE_7__ {int program; struct vmstate* vmst; } ;
typedef TYPE_2__ kvm_t ;
typedef int kvaddr_t ;
struct TYPE_6__ {int p_paddr; } ;


 int _kvm_err (TYPE_2__*,int ,char*) ;
 int be32toh (int ) ;
 scalar_t__ powerpc_va2off (TYPE_2__*,int ,int *) ;

__attribute__((used)) static int
_powerpc_kvatop(kvm_t *kd, kvaddr_t va, off_t *ofs)
{
 struct vmstate *vm;

 vm = kd->vmst;
 if (be32toh(vm->ph->p_paddr) == 0xffffffff)
  return ((int)powerpc_va2off(kd, va, ofs));

 _kvm_err(kd, kd->program, "Raw corefile not supported");
 return (0);
}
