
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * z_curr_node; } ;
typedef TYPE_1__ zfs_acl_t ;
typedef int zfs_acl_node_t ;


 int ASSERT (int *) ;

__attribute__((used)) static zfs_acl_node_t *
zfs_acl_curr_node(zfs_acl_t *aclp)
{
 ASSERT(aclp->z_curr_node);
 return (aclp->z_curr_node);
}
