
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int z_id; TYPE_2__* z_zfsvfs; } ;
typedef TYPE_1__ znode_t ;
struct TYPE_10__ {int z_os; } ;
typedef TYPE_2__ zfsvfs_t ;
typedef int vnode_t ;
typedef int u_long ;
typedef int offset_t ;
typedef int off ;
typedef int ndata ;
struct TYPE_11__ {int doi_fill_count; } ;
typedef TYPE_3__ dmu_object_info_t ;
typedef int cred_t ;
typedef int caller_context_t ;


 int EFAULT ;
 int ENOTTY ;
 int SET_ERROR (int ) ;
 TYPE_1__* VTOZ (int *) ;
 int ZFS_ENTER (TYPE_2__*) ;
 int ZFS_EXIT (TYPE_2__*) ;
 int ZFS_VERIFY_ZP (TYPE_1__*) ;






 int ddi_copyin (void*,int *,int,int) ;
 int ddi_copyout (int *,void*,int,int) ;
 int dmu_object_info (int ,int ,TYPE_3__*) ;
 int dmu_object_wait_synced (int ,int ) ;
 int zfs_holey (int *,int,int *) ;

__attribute__((used)) static int
zfs_ioctl(vnode_t *vp, u_long com, intptr_t data, int flag, cred_t *cred,
    int *rvalp, caller_context_t *ct)
{
 offset_t off;
 offset_t ndata;
 dmu_object_info_t doi;
 int error;
 zfsvfs_t *zfsvfs;
 znode_t *zp;

 switch (com) {
 case 133:
 {
  return (0);





 }
 case 132:
 case 131:
 {
  return (0);
 }

 case 129:
 case 128:
 {




  off = *(offset_t *)data;

  zp = VTOZ(vp);
  zfsvfs = zp->z_zfsvfs;
  ZFS_ENTER(zfsvfs);
  ZFS_VERIFY_ZP(zp);


  error = zfs_holey(vp, com, &off);
  ZFS_EXIT(zfsvfs);
  if (error)
   return (error);




  *(offset_t *)data = off;

  return (0);
 }
 }
 return (SET_ERROR(ENOTTY));
}
