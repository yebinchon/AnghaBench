
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int z_acl; } ;
typedef TYPE_1__ zfs_acl_t ;


 int kmem_free (TYPE_1__*,int) ;
 int list_destroy (int *) ;
 int zfs_acl_release_nodes (TYPE_1__*) ;

void
zfs_acl_free(zfs_acl_t *aclp)
{
 zfs_acl_release_nodes(aclp);
 list_destroy(&aclp->z_acl);
 kmem_free(aclp, sizeof (zfs_acl_t));
}
