
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* vm_page_t ;
struct TYPE_5__ {int flags; } ;


 int PG_ZERO ;
 int VM_ALLOC_NOOBJ ;
 int VM_ALLOC_NORMAL ;
 int VM_ALLOC_ZERO ;
 int pmap_zero_page (TYPE_1__*) ;
 TYPE_1__* vm_page_alloc (int *,int ,int) ;

__attribute__((used)) static vm_page_t
pmap_large_map_getptp_unlocked(void)
{
 vm_page_t m;

 m = vm_page_alloc(((void*)0), 0, VM_ALLOC_NORMAL | VM_ALLOC_NOOBJ |
     VM_ALLOC_ZERO);
 if (m != ((void*)0) && (m->flags & PG_ZERO) == 0)
  pmap_zero_page(m);
 return (m);
}
