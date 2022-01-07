
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int z_allocsize; struct TYPE_4__* z_allocdata; } ;
typedef TYPE_1__ zfs_acl_node_t ;


 int kmem_free (TYPE_1__*,int) ;

__attribute__((used)) static void
zfs_acl_node_free(zfs_acl_node_t *aclnode)
{
 if (aclnode->z_allocsize)
  kmem_free(aclnode->z_allocdata, aclnode->z_allocsize);
 kmem_free(aclnode, sizeof (zfs_acl_node_t));
}
