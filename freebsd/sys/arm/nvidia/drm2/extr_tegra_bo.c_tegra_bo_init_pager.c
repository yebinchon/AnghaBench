
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_2__* vm_page_t ;
struct TYPE_6__ {int size; } ;
struct tegra_bo {int npages; TYPE_2__** m; int vbase; int cdev_pager; int pbase; TYPE_1__ gem_obj; } ;
struct TYPE_7__ {int flags; int oflags; } ;


 int EINVAL ;
 int ENOMEM ;
 int M_BESTFIT ;
 int M_WAITOK ;
 int PG_FICTITIOUS ;
 int VM_OBJECT_WLOCK (int ) ;
 int VM_OBJECT_WUNLOCK (int ) ;
 int VM_PAGE_TO_PHYS (TYPE_2__*) ;
 int VPO_UNMANAGED ;
 int kmem_arena ;
 int pmap_qenter (int ,TYPE_2__**,int) ;
 size_t round_page (int ) ;
 scalar_t__ vm_page_insert (TYPE_2__*,int ,int) ;
 scalar_t__ vmem_alloc (int ,size_t,int,int *) ;

__attribute__((used)) static int
tegra_bo_init_pager(struct tegra_bo *bo)
{
 vm_page_t m;
 size_t size;
 int i;

 size = round_page(bo->gem_obj.size);

 bo->pbase = VM_PAGE_TO_PHYS(bo->m[0]);
 if (vmem_alloc(kmem_arena, size, M_WAITOK | M_BESTFIT, &bo->vbase))
  return (ENOMEM);

 VM_OBJECT_WLOCK(bo->cdev_pager);
 for (i = 0; i < bo->npages; i++) {
  m = bo->m[i];
  m->oflags &= ~VPO_UNMANAGED;
  m->flags |= PG_FICTITIOUS;
  if (vm_page_insert(m, bo->cdev_pager, i) != 0)
   return (EINVAL);
 }
 VM_OBJECT_WUNLOCK(bo->cdev_pager);

 pmap_qenter(bo->vbase, bo->m, bo->npages);
 return (0);
}
