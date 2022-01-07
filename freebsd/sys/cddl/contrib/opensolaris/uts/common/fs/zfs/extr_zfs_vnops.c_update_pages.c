
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * v_object; int * v_mount; } ;
typedef TYPE_1__ vnode_t ;
typedef int * vm_page_t ;
typedef int * vm_object_t ;
typedef int uint64_t ;
struct sf_buf {int dummy; } ;
typedef int objset_t ;
typedef int int64_t ;
typedef int dmu_tx_t ;
typedef int caddr_t ;


 int ASSERT (int) ;
 int DMU_READ_PREFETCH ;
 int PAGEMASK ;
 int PAGEOFFSET ;
 scalar_t__ PAGESIZE ;
 int UIO_NOCOPY ;
 int dmu_read (int *,int ,int,int,int ,int ) ;
 int imin (scalar_t__,int) ;
 int * page_busy (TYPE_1__*,int,int,int) ;
 int page_unbusy (int *) ;
 int vm_object_pip_add (int *,int) ;
 int vm_object_pip_wakeup (int *) ;
 int zfs_map_page (int *,struct sf_buf**) ;
 int zfs_unmap_page (struct sf_buf*) ;
 int zfs_vmobject_wlock (int *) ;
 int zfs_vmobject_wunlock (int *) ;

__attribute__((used)) static void
update_pages(vnode_t *vp, int64_t start, int len, objset_t *os, uint64_t oid,
    int segflg, dmu_tx_t *tx)
{
 vm_object_t obj;
 struct sf_buf *sf;
 caddr_t va;
 int off;

 ASSERT(segflg != UIO_NOCOPY);
 ASSERT(vp->v_mount != ((void*)0));
 obj = vp->v_object;
 ASSERT(obj != ((void*)0));

 off = start & PAGEOFFSET;
 zfs_vmobject_wlock(obj);
 vm_object_pip_add(obj, 1);
 for (start &= PAGEMASK; len > 0; start += PAGESIZE) {
  vm_page_t pp;
  int nbytes = imin(PAGESIZE - off, len);

  if ((pp = page_busy(vp, start, off, nbytes)) != ((void*)0)) {
   zfs_vmobject_wunlock(obj);

   va = zfs_map_page(pp, &sf);
   (void) dmu_read(os, oid, start+off, nbytes,
       va+off, DMU_READ_PREFETCH);;
   zfs_unmap_page(sf);

   zfs_vmobject_wlock(obj);
   page_unbusy(pp);
  }
  len -= nbytes;
  off = 0;
 }
 vm_object_pip_wakeup(obj);
 zfs_vmobject_wunlock(obj);
}
