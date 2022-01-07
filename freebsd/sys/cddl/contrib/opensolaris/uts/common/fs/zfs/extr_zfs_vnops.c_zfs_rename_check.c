
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {scalar_t__ z_id; int z_sa_hdl; int z_unlinked; TYPE_2__* z_zfsvfs; } ;
typedef TYPE_1__ znode_t ;
struct TYPE_11__ {scalar_t__ z_root; int z_os; } ;
typedef TYPE_2__ zfsvfs_t ;
typedef scalar_t__ uint64_t ;
typedef int parent ;


 int ASSERT (int) ;
 int EINVAL ;
 int ENOTDIR ;
 int SA_ZPL_PARENT (TYPE_2__*) ;
 int SET_ERROR (int ) ;
 int VN_RELE_ASYNC (int ,int ) ;
 int ZTOV (TYPE_1__*) ;
 int dmu_objset_pool (int ) ;
 int dsl_pool_vnrele_taskq (int ) ;
 int panic (char*) ;
 int sa_lookup (int ,int ,scalar_t__*,int) ;
 int zfs_zget (TYPE_2__*,scalar_t__,TYPE_1__**) ;

__attribute__((used)) static int
zfs_rename_check(znode_t *szp, znode_t *sdzp, znode_t *tdzp)
{
 zfsvfs_t *zfsvfs;
 znode_t *zp, *zp1;
 uint64_t parent;
 int error;

 zfsvfs = tdzp->z_zfsvfs;
 if (tdzp == szp)
  return (SET_ERROR(EINVAL));
 if (tdzp == sdzp)
  return (0);
 if (tdzp->z_id == zfsvfs->z_root)
  return (0);
 zp = tdzp;
 for (;;) {
  ASSERT(!zp->z_unlinked);
  if ((error = sa_lookup(zp->z_sa_hdl,
      SA_ZPL_PARENT(zfsvfs), &parent, sizeof (parent))) != 0)
   break;

  if (parent == szp->z_id) {
   error = SET_ERROR(EINVAL);
   break;
  }
  if (parent == zfsvfs->z_root)
   break;
  if (parent == sdzp->z_id)
   break;

  error = zfs_zget(zfsvfs, parent, &zp1);
  if (error != 0)
   break;

  if (zp != tdzp)
   VN_RELE_ASYNC(ZTOV(zp),
       dsl_pool_vnrele_taskq(dmu_objset_pool(zfsvfs->z_os)));
  zp = zp1;
 }

 if (error == ENOTDIR)
  panic("checkpath: .. not a directory\n");
 if (zp != tdzp)
  VN_RELE_ASYNC(ZTOV(zp),
      dsl_pool_vnrele_taskq(dmu_objset_pool(zfsvfs->z_os)));
 return (error);
}
