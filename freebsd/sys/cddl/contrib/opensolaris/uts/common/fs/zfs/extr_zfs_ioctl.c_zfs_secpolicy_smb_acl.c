
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zfs_cmd_t ;
typedef int nvlist_t ;
typedef int cred_t ;


 int EPERM ;
 int INGLOBALZONE (int ) ;
 int SET_ERROR (int ) ;
 int curthread ;
 scalar_t__ secpolicy_smb (int *) ;
 int zfs_secpolicy_deleg_share (int *,int *,int *) ;

int
zfs_secpolicy_smb_acl(zfs_cmd_t *zc, nvlist_t *innvl, cred_t *cr)
{
 if (!INGLOBALZONE(curthread))
  return (SET_ERROR(EPERM));

 if (secpolicy_smb(cr) == 0) {
  return (0);
 } else {
  return (zfs_secpolicy_deleg_share(zc, innvl, cr));
 }
}
