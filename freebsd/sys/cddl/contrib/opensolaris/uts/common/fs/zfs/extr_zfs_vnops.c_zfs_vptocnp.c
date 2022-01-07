
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_25__ TYPE_5__ ;
typedef struct TYPE_24__ TYPE_4__ ;
typedef struct TYPE_23__ TYPE_3__ ;
typedef struct TYPE_22__ TYPE_2__ ;
typedef struct TYPE_21__ TYPE_1__ ;


struct TYPE_23__ {scalar_t__ z_id; } ;
typedef TYPE_3__ znode_t ;
struct TYPE_24__ {scalar_t__ z_root; struct TYPE_24__* z_parent; } ;
typedef TYPE_4__ zfsvfs_t ;
struct TYPE_25__ {int v_iflag; TYPE_2__* v_mount; TYPE_1__* v_vfsp; } ;
typedef TYPE_5__ vnode_t ;
struct vop_vptocnp_args {size_t* a_buflen; scalar_t__ a_buf; int a_cred; int * a_vpp; TYPE_5__* a_vp; } ;
typedef enum vgetstate { ____Placeholder_vgetstate } vgetstate ;
struct TYPE_22__ {TYPE_5__* mnt_vnodecovered; } ;
struct TYPE_21__ {TYPE_4__* vfs_data; } ;


 int ENOENT ;
 int ENOMEM ;
 int LK_RETRY ;
 int LK_SHARED ;
 int MAXNAMLEN ;
 int SET_ERROR (int ) ;
 int VI_DOOMED ;
 int VOP_ISLOCKED (TYPE_5__*) ;
 int VOP_UNLOCK (TYPE_5__*,int ) ;
 int VOP_VPTOCNP (TYPE_5__*,int *,int ,scalar_t__,size_t*) ;
 TYPE_3__* VTOZ (TYPE_5__*) ;
 int ZFS_ENTER (TYPE_4__*) ;
 int ZFS_EXIT (TYPE_4__*) ;
 int ZFS_VERIFY_ZP (TYPE_3__*) ;
 int ZTOV (TYPE_3__*) ;
 int bcopy (char*,scalar_t__,size_t) ;
 size_t strlen (char*) ;
 int vget_finish (TYPE_5__*,int ,int) ;
 int vget_prep (TYPE_5__*) ;
 int vn_lock (TYPE_5__*,int) ;
 int vput (TYPE_5__*) ;
 int zfs_znode_parent_and_name (TYPE_3__*,TYPE_3__**,char*) ;

__attribute__((used)) static int
zfs_vptocnp(struct vop_vptocnp_args *ap)
{
 vnode_t *covered_vp;
 vnode_t *vp = ap->a_vp;;
 zfsvfs_t *zfsvfs = vp->v_vfsp->vfs_data;
 znode_t *zp = VTOZ(vp);
 enum vgetstate vs;
 int ltype;
 int error;

 ZFS_ENTER(zfsvfs);
 ZFS_VERIFY_ZP(zp);





 if (zp->z_id != zfsvfs->z_root || zfsvfs->z_parent == zfsvfs) {
  char name[MAXNAMLEN + 1];
  znode_t *dzp;
  size_t len;

  error = zfs_znode_parent_and_name(zp, &dzp, name);
  if (error == 0) {
   len = strlen(name);
   if (*ap->a_buflen < len)
    error = SET_ERROR(ENOMEM);
  }
  if (error == 0) {
   *ap->a_buflen -= len;
   bcopy(name, ap->a_buf + *ap->a_buflen, len);
   *ap->a_vpp = ZTOV(dzp);
  }
  ZFS_EXIT(zfsvfs);
  return (error);
 }
 ZFS_EXIT(zfsvfs);

 covered_vp = vp->v_mount->mnt_vnodecovered;
 vs = vget_prep(covered_vp);
 ltype = VOP_ISLOCKED(vp);
 VOP_UNLOCK(vp, 0);
 error = vget_finish(covered_vp, LK_SHARED, vs);
 if (error == 0) {
  error = VOP_VPTOCNP(covered_vp, ap->a_vpp, ap->a_cred,
      ap->a_buf, ap->a_buflen);
  vput(covered_vp);
 }
 vn_lock(vp, ltype | LK_RETRY);
 if ((vp->v_iflag & VI_DOOMED) != 0)
  error = SET_ERROR(ENOENT);
 return (error);
}
