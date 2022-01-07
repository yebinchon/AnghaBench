
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_6__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int z_pflags; TYPE_2__* z_zfsvfs; } ;
typedef TYPE_1__ znode_t ;
struct TYPE_9__ {scalar_t__ z_replay; } ;
typedef TYPE_2__ zfsvfs_t ;
typedef int uint32_t ;
typedef int cred_t ;
typedef scalar_t__ boolean_t ;
struct TYPE_10__ {scalar_t__ v_type; } ;


 scalar_t__ B_FALSE ;
 scalar_t__ B_TRUE ;
 int EPERM ;
 int SET_ERROR (int ) ;
 scalar_t__ VDIR ;
 int WRITE_MASK_DATA ;
 int ZFS_READONLY ;
 TYPE_6__* ZTOV (TYPE_1__*) ;
 int zfs_zaccess_aces_check (TYPE_1__*,int*,scalar_t__,int *) ;
 int zfs_zaccess_dataset_check (TYPE_1__*,int) ;

__attribute__((used)) static int
zfs_zaccess_common(znode_t *zp, uint32_t v4_mode, uint32_t *working_mode,
    boolean_t *check_privs, boolean_t skipaclchk, cred_t *cr)
{
 zfsvfs_t *zfsvfs = zp->z_zfsvfs;
 int err;

 *working_mode = v4_mode;
 *check_privs = B_TRUE;




 if (v4_mode == 0 || zfsvfs->z_replay) {
  *working_mode = 0;
  return (0);
 }

 if ((err = zfs_zaccess_dataset_check(zp, v4_mode)) != 0) {
  *check_privs = B_FALSE;
  return (err);
 }






 if (skipaclchk) {
  *working_mode = 0;
  return (0);
 }
 if ((v4_mode & WRITE_MASK_DATA) &&
     (ZTOV(zp)->v_type != VDIR) &&
     (zp->z_pflags & ZFS_READONLY)) {
  return (SET_ERROR(EPERM));
 }

 return (zfs_zaccess_aces_check(zp, working_mode, B_FALSE, cr));
}
