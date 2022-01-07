
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int z_uid; int z_zfsvfs; } ;
typedef TYPE_1__ znode_t ;
typedef int uid_t ;
typedef int mode_t ;
typedef int cred_t ;


 int VEXEC ;
 int VWRITE ;
 int ZFS_OWNER ;
 int ZTOV (TYPE_1__*) ;
 int secpolicy_vnode_access2 (int *,int ,int ,int ,int) ;
 int zfs_fuid_map_id (int ,int ,int *,int ) ;
 int zfs_sticky_remove_access (TYPE_1__*,TYPE_1__*,int *) ;

__attribute__((used)) static int
zfs_delete_final_check(znode_t *zp, znode_t *dzp,
    mode_t available_perms, cred_t *cr)
{
 int error;
 uid_t downer;

 downer = zfs_fuid_map_id(dzp->z_zfsvfs, dzp->z_uid, cr, ZFS_OWNER);

 error = secpolicy_vnode_access2(cr, ZTOV(dzp),
     downer, available_perms, VWRITE|VEXEC);

 if (error == 0)
  error = zfs_sticky_remove_access(dzp, zp, cr);

 return (error);
}
