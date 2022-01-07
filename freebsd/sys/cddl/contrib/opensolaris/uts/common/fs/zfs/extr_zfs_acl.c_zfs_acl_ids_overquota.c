
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int zfsvfs_t ;
struct TYPE_3__ {int z_fgid; int z_fuid; } ;
typedef TYPE_1__ zfs_acl_ids_t ;
typedef int boolean_t ;


 int B_FALSE ;
 int B_TRUE ;
 scalar_t__ zfs_fuid_overquota (int *,int ,int ) ;

boolean_t
zfs_acl_ids_overquota(zfsvfs_t *zfsvfs, zfs_acl_ids_t *acl_ids)
{
 return (zfs_fuid_overquota(zfsvfs, B_FALSE, acl_ids->z_fuid) ||
     zfs_fuid_overquota(zfsvfs, B_TRUE, acl_ids->z_fgid));
}
