
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_37__ TYPE_6__ ;
typedef struct TYPE_36__ TYPE_5__ ;
typedef struct TYPE_35__ TYPE_4__ ;
typedef struct TYPE_34__ TYPE_3__ ;
typedef struct TYPE_33__ TYPE_2__ ;
typedef struct TYPE_32__ TYPE_20__ ;
typedef struct TYPE_31__ TYPE_1__ ;


struct TYPE_34__ {int z_blksz; int z_id; int z_sa_hdl; int * z_pflags; int z_rangelock; TYPE_4__* z_zfsvfs; } ;
typedef TYPE_3__ znode_t ;
struct TYPE_35__ {int z_log; TYPE_20__* z_os; } ;
typedef TYPE_4__ zfsvfs_t ;
typedef TYPE_5__* vm_page_t ;
typedef scalar_t__ vm_ooffset_t ;
typedef TYPE_6__* vm_object_t ;
typedef int uint_t ;
typedef int uint64_t ;
struct vnode {TYPE_6__* v_object; } ;
struct sf_buf {int dummy; } ;
typedef int sa_bulk_attr_t ;
typedef int locked_range_t ;
typedef int dmu_tx_t ;
typedef int caddr_t ;
struct TYPE_31__ {scalar_t__ vnp_size; } ;
struct TYPE_33__ {TYPE_1__ vnp; } ;
struct TYPE_37__ {TYPE_2__ un_pager; } ;
struct TYPE_36__ {int pindex; TYPE_6__* object; } ;
struct TYPE_32__ {scalar_t__ os_sync; } ;


 int ASSERT0 (int) ;
 int B_FALSE ;
 int B_TRUE ;
 int CONTENT_MODIFIED ;
 scalar_t__ IDX_TO_OFF (int ) ;
 int KASSERT (int,char*) ;
 size_t PAGE_MASK ;
 int PAGE_SIZE ;
 int RL_WRITER ;
 int SA_ADD_BULK_ATTR (int *,int,int ,int *,int **,int) ;
 int SA_ZPL_CTIME (TYPE_4__*) ;
 int SA_ZPL_FLAGS (TYPE_4__*) ;
 int SA_ZPL_MTIME (TYPE_4__*) ;
 int TXG_WAIT ;
 int TX_WRITE ;
 int VM_CNT_ADD (int ,int) ;
 int VM_CNT_INC (int ) ;
 TYPE_3__* VTOZ (struct vnode*) ;
 int ZFS_ENTER (TYPE_4__*) ;
 int ZFS_EXIT (TYPE_4__*) ;
 scalar_t__ ZFS_SYNC_ALWAYS ;
 int ZFS_VERIFY_ZP (TYPE_3__*) ;
 int btoc (size_t) ;
 int dmu_tx_abort (int *) ;
 int dmu_tx_assign (int *,int ) ;
 int dmu_tx_commit (int *) ;
 int * dmu_tx_create (TYPE_20__*) ;
 int dmu_tx_hold_sa (int *,int ,int ) ;
 int dmu_tx_hold_write (int *,int ,scalar_t__,size_t) ;
 int dmu_write (TYPE_20__*,int ,scalar_t__,size_t,int ,int *) ;
 int dmu_write_pages (TYPE_20__*,int ,scalar_t__,size_t,TYPE_5__**,int *) ;
 int pmap_page_is_write_mapped (TYPE_5__*) ;
 int * rangelock_enter (int *,scalar_t__,size_t,int ) ;
 int rangelock_exit (int *) ;
 scalar_t__ rounddown (scalar_t__,int) ;
 size_t roundup (scalar_t__,int) ;
 int sa_bulk_update (int ,int *,int,int *) ;
 int v_vnodeout ;
 int v_vnodepgsout ;
 int vm_page_assert_sbusied (TYPE_5__*) ;
 int vm_page_clear_dirty (TYPE_5__*,int,int) ;
 int vm_page_undirty (TYPE_5__*) ;
 int zfs_log_write (int ,int *,int ,TYPE_3__*,scalar_t__,size_t,int ) ;
 int zfs_map_page (TYPE_5__*,struct sf_buf**) ;
 scalar_t__ zfs_owner_overquota (TYPE_4__*,TYPE_3__*,int ) ;
 int zfs_sa_upgrade_txholds (int *,TYPE_3__*) ;
 int zfs_tstamp_update_setup (TYPE_3__*,int ,int *,int *,int ) ;
 int zfs_unmap_page (struct sf_buf*) ;
 int zfs_vm_pagerput_inval ;
 int zfs_vm_pagerput_sync ;
 int zfs_vm_pagerret_bad ;
 int zfs_vm_pagerret_error ;
 int zfs_vm_pagerret_ok ;
 int zfs_vmobject_wlock (TYPE_6__*) ;
 int zfs_vmobject_wunlock (TYPE_6__*) ;
 int zil_commit (int ,int ) ;

__attribute__((used)) static int
zfs_putpages(struct vnode *vp, vm_page_t *ma, size_t len, int flags,
    int *rtvals)
{
 znode_t *zp = VTOZ(vp);
 zfsvfs_t *zfsvfs = zp->z_zfsvfs;
 locked_range_t *lr;
 dmu_tx_t *tx;
 struct sf_buf *sf;
 vm_object_t object;
 vm_page_t m;
 caddr_t va;
 size_t tocopy;
 size_t lo_len;
 vm_ooffset_t lo_off;
 vm_ooffset_t off;
 uint_t blksz;
 int ncount;
 int pcount;
 int err;
 int i;

 ZFS_ENTER(zfsvfs);
 ZFS_VERIFY_ZP(zp);

 object = vp->v_object;
 pcount = btoc(len);
 ncount = pcount;

 KASSERT(ma[0]->object == object, ("mismatching object"));
 KASSERT(len > 0 && (len & PAGE_MASK) == 0, ("unexpected length"));

 for (i = 0; i < pcount; i++)
  rtvals[i] = zfs_vm_pagerret_error;

 off = IDX_TO_OFF(ma[0]->pindex);
 blksz = zp->z_blksz;
 lo_off = rounddown(off, blksz);
 lo_len = roundup(len + (off - lo_off), blksz);
 lr = rangelock_enter(&zp->z_rangelock, lo_off, lo_len, RL_WRITER);

 zfs_vmobject_wlock(object);
 if (len + off > object->un_pager.vnp.vnp_size) {
  if (object->un_pager.vnp.vnp_size > off) {
   int pgoff;

   len = object->un_pager.vnp.vnp_size - off;
   ncount = btoc(len);
   if ((pgoff = (int)len & PAGE_MASK) != 0) {






    m = ma[ncount - 1];
    vm_page_assert_sbusied(m);
    KASSERT(!pmap_page_is_write_mapped(m),
        ("zfs_putpages: page %p is not read-only", m));
    vm_page_clear_dirty(m, pgoff, PAGE_SIZE -
        pgoff);
   }
  } else {
   len = 0;
   ncount = 0;
  }
  if (ncount < pcount) {
   for (i = ncount; i < pcount; i++) {
    rtvals[i] = zfs_vm_pagerret_bad;
   }
  }
 }
 zfs_vmobject_wunlock(object);

 if (ncount == 0)
  goto out;

 if (zfs_owner_overquota(zfsvfs, zp, B_FALSE) ||
     zfs_owner_overquota(zfsvfs, zp, B_TRUE)) {
  goto out;
 }

 tx = dmu_tx_create(zfsvfs->z_os);
 dmu_tx_hold_write(tx, zp->z_id, off, len);

 dmu_tx_hold_sa(tx, zp->z_sa_hdl, B_FALSE);
 zfs_sa_upgrade_txholds(tx, zp);
 err = dmu_tx_assign(tx, TXG_WAIT);
 if (err != 0) {
  dmu_tx_abort(tx);
  goto out;
 }

 if (zp->z_blksz < PAGE_SIZE) {
  for (i = 0; len > 0; off += tocopy, len -= tocopy, i++) {
   tocopy = len > PAGE_SIZE ? PAGE_SIZE : len;
   va = zfs_map_page(ma[i], &sf);
   dmu_write(zfsvfs->z_os, zp->z_id, off, tocopy, va, tx);
   zfs_unmap_page(sf);
  }
 } else {
  err = dmu_write_pages(zfsvfs->z_os, zp->z_id, off, len, ma, tx);
 }

 if (err == 0) {
  uint64_t mtime[2], ctime[2];
  sa_bulk_attr_t bulk[3];
  int count = 0;

  SA_ADD_BULK_ATTR(bulk, count, SA_ZPL_MTIME(zfsvfs), ((void*)0),
      &mtime, 16);
  SA_ADD_BULK_ATTR(bulk, count, SA_ZPL_CTIME(zfsvfs), ((void*)0),
      &ctime, 16);
  SA_ADD_BULK_ATTR(bulk, count, SA_ZPL_FLAGS(zfsvfs), ((void*)0),
      &zp->z_pflags, 8);
  zfs_tstamp_update_setup(zp, CONTENT_MODIFIED, mtime, ctime,
      B_TRUE);
  err = sa_bulk_update(zp->z_sa_hdl, bulk, count, tx);
  ASSERT0(err);
  zfs_log_write(zfsvfs->z_log, tx, TX_WRITE, zp, off, len, 0);

  zfs_vmobject_wlock(object);
  for (i = 0; i < ncount; i++) {
   rtvals[i] = zfs_vm_pagerret_ok;
   vm_page_undirty(ma[i]);
  }
  zfs_vmobject_wunlock(object);
  VM_CNT_INC(v_vnodeout);
  VM_CNT_ADD(v_vnodepgsout, ncount);
 }
 dmu_tx_commit(tx);

out:
 rangelock_exit(lr);
 if ((flags & (zfs_vm_pagerput_sync | zfs_vm_pagerput_inval)) != 0 ||
     zfsvfs->z_os->os_sync == ZFS_SYNC_ALWAYS)
  zil_commit(zfsvfs->z_log, zp->z_id);
 ZFS_EXIT(zfsvfs);
 return (rtvals[0]);
}
