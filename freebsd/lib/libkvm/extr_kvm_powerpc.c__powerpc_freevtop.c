
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct vmstate {scalar_t__ eh; int mapsz; } ;
struct TYPE_3__ {struct vmstate* vmst; } ;
typedef TYPE_1__ kvm_t ;


 scalar_t__ MAP_FAILED ;
 int free (struct vmstate*) ;
 int munmap (scalar_t__,int ) ;

__attribute__((used)) static void
_powerpc_freevtop(kvm_t *kd)
{
 struct vmstate *vm = kd->vmst;

 if (vm->eh != MAP_FAILED)
  munmap(vm->eh, vm->mapsz);
 free(vm);
 kd->vmst = ((void*)0);
}
