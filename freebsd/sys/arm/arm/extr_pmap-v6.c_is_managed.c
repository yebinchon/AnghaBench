
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* vm_page_t ;
typedef int vm_paddr_t ;
struct TYPE_3__ {int oflags; } ;


 TYPE_1__* PHYS_TO_VM_PAGE (int ) ;
 int VPO_UNMANAGED ;

__attribute__((used)) static __inline bool
is_managed(vm_paddr_t pa)
{
 vm_page_t m;

 m = PHYS_TO_VM_PAGE(pa);
 if (m == ((void*)0))
  return (0);
 return ((m->oflags & VPO_UNMANAGED) == 0);
}
