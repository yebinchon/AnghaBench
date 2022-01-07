
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * v_data; } ;
typedef TYPE_1__ vnode_t ;
typedef int sfs_node_t ;


 int sfs_vnode_remove (TYPE_1__*) ;

__attribute__((used)) static void *
sfs_reclaim_vnode(vnode_t *vp)
{
 sfs_node_t *node;
 void *data;

 sfs_vnode_remove(vp);
 data = vp->v_data;
 vp->v_data = ((void*)0);
 return (data);
}
