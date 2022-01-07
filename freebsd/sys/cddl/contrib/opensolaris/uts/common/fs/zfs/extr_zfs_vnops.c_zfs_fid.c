
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_12__ {int z_id; int z_sa_hdl; TYPE_2__* z_zfsvfs; } ;
typedef TYPE_1__ znode_t ;
struct TYPE_13__ {int z_os; struct TYPE_13__* z_parent; } ;
typedef TYPE_2__ zfsvfs_t ;
struct TYPE_14__ {int zf_len; void** zf_gen; void** zf_object; } ;
typedef TYPE_3__ zfid_short_t ;
struct TYPE_15__ {scalar_t__* zf_setgen; void** zf_setid; } ;
typedef TYPE_4__ zfid_long_t ;
typedef int vnode_t ;
typedef void* uint8_t ;
typedef int uint64_t ;
typedef int uint32_t ;
struct TYPE_16__ {int fid_len; } ;
typedef TYPE_5__ fid_t ;
typedef int caller_context_t ;


 int ENOSPC ;
 int LONG_FID_LEN ;
 int SA_ZPL_GEN (TYPE_2__*) ;
 int SET_ERROR (int ) ;
 int SHORT_FID_LEN ;
 TYPE_1__* VTOZ (int *) ;
 int ZFS_ENTER (TYPE_2__*) ;
 int ZFS_EXIT (TYPE_2__*) ;
 int ZFS_VERIFY_ZP (TYPE_1__*) ;
 int dmu_objset_id (int ) ;
 int sa_lookup (int ,int ,int*,int) ;

__attribute__((used)) static int
zfs_fid(vnode_t *vp, fid_t *fidp, caller_context_t *ct)
{
 znode_t *zp = VTOZ(vp);
 zfsvfs_t *zfsvfs = zp->z_zfsvfs;
 uint32_t gen;
 uint64_t gen64;
 uint64_t object = zp->z_id;
 zfid_short_t *zfid;
 int size, i, error;

 ZFS_ENTER(zfsvfs);
 ZFS_VERIFY_ZP(zp);

 if ((error = sa_lookup(zp->z_sa_hdl, SA_ZPL_GEN(zfsvfs),
     &gen64, sizeof (uint64_t))) != 0) {
  ZFS_EXIT(zfsvfs);
  return (error);
 }

 gen = (uint32_t)gen64;

 size = (zfsvfs->z_parent != zfsvfs) ? LONG_FID_LEN : SHORT_FID_LEN;
 fidp->fid_len = size;


 zfid = (zfid_short_t *)fidp;

 zfid->zf_len = size;

 for (i = 0; i < sizeof (zfid->zf_object); i++)
  zfid->zf_object[i] = (uint8_t)(object >> (8 * i));


 if (gen == 0)
  gen = 1;
 for (i = 0; i < sizeof (zfid->zf_gen); i++)
  zfid->zf_gen[i] = (uint8_t)(gen >> (8 * i));

 if (size == LONG_FID_LEN) {
  uint64_t objsetid = dmu_objset_id(zfsvfs->z_os);
  zfid_long_t *zlfid;

  zlfid = (zfid_long_t *)fidp;

  for (i = 0; i < sizeof (zlfid->zf_setid); i++)
   zlfid->zf_setid[i] = (uint8_t)(objsetid >> (8 * i));


  for (i = 0; i < sizeof (zlfid->zf_setgen); i++)
   zlfid->zf_setgen[i] = 0;
 }

 ZFS_EXIT(zfsvfs);
 return (0);
}
