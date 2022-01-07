
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_9__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {int z_pflags; } ;
typedef TYPE_1__ znode_t ;
typedef int cred_t ;
struct TYPE_12__ {scalar_t__ v_type; } ;


 int ACE_ADD_FILE ;
 int ACE_ADD_SUBDIRECTORY ;
 int ACE_WRITE_DATA ;
 int B_FALSE ;
 int EACCES ;
 int SET_ERROR (int ) ;
 scalar_t__ VDIR ;
 int ZFS_AV_QUARANTINED ;
 TYPE_9__* ZTOV (TYPE_1__*) ;
 int zfs_zaccess (TYPE_1__*,int,int ,int ,int *) ;
 int zfs_zaccess_delete (TYPE_1__*,TYPE_1__*,int *) ;

int
zfs_zaccess_rename(znode_t *sdzp, znode_t *szp, znode_t *tdzp,
    znode_t *tzp, cred_t *cr)
{
 int add_perm;
 int error;

 if (szp->z_pflags & ZFS_AV_QUARANTINED)
  return (SET_ERROR(EACCES));

 add_perm = (ZTOV(szp)->v_type == VDIR) ?
     ACE_ADD_SUBDIRECTORY : ACE_ADD_FILE;
 if (ZTOV(szp)->v_type == VDIR && ZTOV(sdzp) != ZTOV(tdzp)) {
  if (error = zfs_zaccess(szp, ACE_WRITE_DATA, 0, B_FALSE, cr))
   return (error);
 }







 if (error = zfs_zaccess_delete(sdzp, szp, cr))
  return (error);




 if (tzp) {
  if (error = zfs_zaccess_delete(tdzp, tzp, cr))
   return (error);
 }




 error = zfs_zaccess(tdzp, add_perm, 0, B_FALSE, cr);

 return (error);
}
