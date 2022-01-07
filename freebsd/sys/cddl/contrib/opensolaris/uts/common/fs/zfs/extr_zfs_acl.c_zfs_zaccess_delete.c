
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int z_pflags; } ;
typedef TYPE_1__ znode_t ;
typedef int uint32_t ;
typedef int mode_t ;
typedef int cred_t ;
typedef int boolean_t ;


 int ACE_DELETE ;
 int ACE_DELETE_CHILD ;
 int ACE_EXECUTE ;
 int ACE_WRITE_DATA ;
 int ASSERT (int) ;
 int B_FALSE ;
 int B_TRUE ;
 int EACCES ;
 int EPERM ;
 int SET_ERROR (int ) ;
 int VEXEC ;
 int VWRITE ;
 int ZFS_IMMUTABLE ;
 int ZFS_NOUNLINK ;
 int ZTOV (TYPE_1__*) ;
 int secpolicy_vnode_remove (int ,int *) ;
 int zfs_delete_final_check (TYPE_1__*,TYPE_1__*,int ,int *) ;
 int zfs_zaccess_common (TYPE_1__*,int,int*,int *,int ,int *) ;

int
zfs_zaccess_delete(znode_t *dzp, znode_t *zp, cred_t *cr)
{
 uint32_t dzp_working_mode = 0;
 uint32_t zp_working_mode = 0;
 int dzp_error, zp_error;
 mode_t available_perms;
 boolean_t dzpcheck_privs = B_TRUE;
 boolean_t zpcheck_privs = B_TRUE;
 if (zp->z_pflags & (ZFS_IMMUTABLE | ZFS_NOUNLINK))
  return (SET_ERROR(EPERM));





 if ((dzp_error = zfs_zaccess_common(dzp, ACE_DELETE_CHILD,
     &dzp_working_mode, &dzpcheck_privs, B_FALSE, cr)) == 0)
  return (0);




 if ((zp_error = zfs_zaccess_common(zp, ACE_DELETE, &zp_working_mode,
     &zpcheck_privs, B_FALSE, cr)) == 0)
  return (0);

 ASSERT(dzp_error && zp_error);

 if (!dzpcheck_privs)
  return (dzp_error);
 if (!zpcheck_privs)
  return (zp_error);
 if (dzp_error == EACCES)
  return (secpolicy_vnode_remove(ZTOV(dzp), cr));






 dzp_error = zfs_zaccess_common(dzp, ACE_EXECUTE|ACE_WRITE_DATA,
     &dzp_working_mode, &dzpcheck_privs, B_FALSE, cr);

 if (dzp_error != 0 && !dzpcheck_privs)
  return (dzp_error);





 available_perms = (dzp_working_mode & ACE_WRITE_DATA) ? 0 : VWRITE;
 available_perms |= (dzp_working_mode & ACE_EXECUTE) ? 0 : VEXEC;

 return (zfs_delete_final_check(zp, dzp, available_perms, cr));

}
