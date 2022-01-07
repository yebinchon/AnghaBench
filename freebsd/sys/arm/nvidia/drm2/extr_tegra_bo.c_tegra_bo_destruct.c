
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_2__* vm_page_t ;
struct TYPE_6__ {int size; } ;
struct tegra_bo {scalar_t__ vbase; int npages; int * cdev_pager; TYPE_2__** m; TYPE_1__ gem_obj; } ;
struct TYPE_7__ {int flags; } ;


 int PG_FICTITIOUS ;
 int VM_OBJECT_WLOCK (int *) ;
 int VM_OBJECT_WUNLOCK (int *) ;
 int cdev_pager_free_page (int *,TYPE_2__*) ;
 int kmem_arena ;
 int pmap_qremove (scalar_t__,int) ;
 size_t round_page (int ) ;
 int vm_object_deallocate (int *) ;
 int vm_page_free (TYPE_2__*) ;
 int vm_page_unwire_noq (TYPE_2__*) ;
 int vmem_free (int ,scalar_t__,size_t) ;

__attribute__((used)) static void
tegra_bo_destruct(struct tegra_bo *bo)
{
 vm_page_t m;
 size_t size;
 int i;

 if (bo->cdev_pager == ((void*)0))
  return;

 size = round_page(bo->gem_obj.size);
 if (bo->vbase != 0)
  pmap_qremove(bo->vbase, bo->npages);

 VM_OBJECT_WLOCK(bo->cdev_pager);
 for (i = 0; i < bo->npages; i++) {
  m = bo->m[i];
  cdev_pager_free_page(bo->cdev_pager, m);
  m->flags &= ~PG_FICTITIOUS;
  vm_page_unwire_noq(m);
  vm_page_free(m);
 }
 VM_OBJECT_WUNLOCK(bo->cdev_pager);

 vm_object_deallocate(bo->cdev_pager);
 if (bo->vbase != 0)
  vmem_free(kmem_arena, bo->vbase, size);
}
