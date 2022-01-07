
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct vmstate {int dummy; } ;
struct TYPE_3__ {struct vmstate* vmst; } ;
typedef TYPE_1__ kvm_t ;


 int free (struct vmstate*) ;

__attribute__((used)) static void
_riscv_minidump_freevtop(kvm_t *kd)
{
 struct vmstate *vm = kd->vmst;

 free(vm);
 kd->vmst = ((void*)0);
}
