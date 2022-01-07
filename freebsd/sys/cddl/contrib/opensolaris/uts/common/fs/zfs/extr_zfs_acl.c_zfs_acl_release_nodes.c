
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ z_acl_bytes; scalar_t__ z_acl_count; int z_acl; } ;
typedef TYPE_1__ zfs_acl_t ;
typedef int zfs_acl_node_t ;


 int * list_head (int *) ;
 int list_remove (int *,int *) ;
 int zfs_acl_node_free (int *) ;

__attribute__((used)) static void
zfs_acl_release_nodes(zfs_acl_t *aclp)
{
 zfs_acl_node_t *aclnode;

 while (aclnode = list_head(&aclp->z_acl)) {
  list_remove(&aclp->z_acl, aclnode);
  zfs_acl_node_free(aclnode);
 }
 aclp->z_acl_count = 0;
 aclp->z_acl_bytes = 0;
}
