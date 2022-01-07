
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {TYPE_2__* vmst; } ;
typedef TYPE_1__ kvm_t ;
struct TYPE_5__ {struct TYPE_5__* vm_regions; } ;


 int free (TYPE_2__*) ;

__attribute__((used)) static void
_sparc64_freevtop(kvm_t *kd)
{

 free(kd->vmst->vm_regions);
 free(kd->vmst);
 kd->vmst = ((void*)0);
}
