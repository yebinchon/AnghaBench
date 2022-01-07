
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vnode {TYPE_1__* v_data; } ;
struct TYPE_2__ {scalar_t__ sn_id; scalar_t__ sn_parent_id; } ;
typedef TYPE_1__ sfs_node_t ;



__attribute__((used)) static int
sfs_compare_ids(struct vnode *vp, void *arg)
{
 sfs_node_t *n1 = vp->v_data;
 sfs_node_t *n2 = arg;
 bool equal;

 equal = n1->sn_id == n2->sn_id &&
     n1->sn_parent_id == n2->sn_parent_id;


 return (!equal);
}
