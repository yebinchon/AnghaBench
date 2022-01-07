
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int znode_t ;
typedef scalar_t__ uint32_t ;
typedef int cred_t ;
typedef int boolean_t ;


 int ACE_APPEND_DATA ;
 scalar_t__ ACE_WRITE_DATA ;
 int B_FALSE ;
 int EACCES ;
 int SET_ERROR (int ) ;
 int zfs_zaccess_common (int *,int ,scalar_t__*,int *,int ,int *) ;

__attribute__((used)) static int
zfs_zaccess_append(znode_t *zp, uint32_t *working_mode, boolean_t *check_privs,
    cred_t *cr)
{
 if (*working_mode != ACE_WRITE_DATA)
  return (SET_ERROR(EACCES));

 return (zfs_zaccess_common(zp, ACE_APPEND_DATA, working_mode,
     check_privs, B_FALSE, cr));
}
