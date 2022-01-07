
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef void* uint64_t ;
typedef int u_int ;
struct vnode {int dummy; } ;
struct mount {int dummy; } ;
struct TYPE_3__ {void* sn_parent_id; void* sn_id; } ;
typedef TYPE_1__ sfs_node_t ;


 int curthread ;
 int sfs_compare_ids ;
 int vfs_hash_get (struct mount const*,int ,int,int ,struct vnode**,int ,TYPE_1__*) ;

__attribute__((used)) static int
sfs_vnode_get(const struct mount *mp, int flags, uint64_t parent_id,
   uint64_t id, struct vnode **vpp)
{
 sfs_node_t search;
 int err;

 search.sn_id = id;
 search.sn_parent_id = parent_id;
 err = vfs_hash_get(mp, (u_int)id, flags, curthread, vpp,
     sfs_compare_ids, &search);
 return (err);
}
