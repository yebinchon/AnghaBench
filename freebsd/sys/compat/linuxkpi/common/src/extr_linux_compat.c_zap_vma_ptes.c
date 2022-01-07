
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef TYPE_1__* vm_page_t ;
typedef TYPE_2__* vm_object_t ;
struct vm_area_struct {TYPE_2__* vm_obj; } ;
struct TYPE_11__ {int flags; } ;
struct TYPE_10__ {scalar_t__ pindex; } ;


 int ENOTSUP ;
 int OBJ_UNMANAGED ;
 scalar_t__ OFF_TO_IDX (unsigned long) ;
 TYPE_1__* TAILQ_NEXT (TYPE_1__*,int ) ;
 int VM_OBJECT_RLOCK (TYPE_2__*) ;
 int VM_OBJECT_RUNLOCK (TYPE_2__*) ;
 int listq ;
 int pmap_remove_all (TYPE_1__*) ;
 TYPE_1__* vm_page_find_least (TYPE_2__*,scalar_t__) ;

int
zap_vma_ptes(struct vm_area_struct *vma, unsigned long address,
    unsigned long size)
{
 vm_object_t obj;
 vm_page_t m;

 obj = vma->vm_obj;
 if (obj == ((void*)0) || (obj->flags & OBJ_UNMANAGED) != 0)
  return (-ENOTSUP);
 VM_OBJECT_RLOCK(obj);
 for (m = vm_page_find_least(obj, OFF_TO_IDX(address));
     m != ((void*)0) && m->pindex < OFF_TO_IDX(address + size);
     m = TAILQ_NEXT(m, listq))
  pmap_remove_all(m);
 VM_OBJECT_RUNLOCK(obj);
 return (0);
}
