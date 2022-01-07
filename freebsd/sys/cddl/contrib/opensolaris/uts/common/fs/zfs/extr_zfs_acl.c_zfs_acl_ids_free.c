
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * z_fuidp; int * z_aclp; } ;
typedef TYPE_1__ zfs_acl_ids_t ;


 int zfs_acl_free (int *) ;
 int zfs_fuid_info_free (int *) ;

void
zfs_acl_ids_free(zfs_acl_ids_t *acl_ids)
{
 if (acl_ids->z_aclp)
  zfs_acl_free(acl_ids->z_aclp);
 if (acl_ids->z_fuidp)
  zfs_fuid_info_free(acl_ids->z_fuidp);
 acl_ids->z_aclp = ((void*)0);
 acl_ids->z_fuidp = ((void*)0);
}
