
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
typedef int u_int ;
struct vnode {int * v_data; } ;


 int KASSERT (int ,char*) ;
 int curthread ;
 int sfs_compare_ids ;
 int vfs_hash_insert (struct vnode*,int ,int,int ,struct vnode**,int ,int *) ;

__attribute__((used)) static int
sfs_vnode_insert(struct vnode *vp, int flags, uint64_t parent_id,
   uint64_t id, struct vnode **vpp)
{
 int err;

 KASSERT(vp->v_data != ((void*)0), ("sfs_vnode_insert with NULL v_data"));
 err = vfs_hash_insert(vp, (u_int)id, flags, curthread, vpp,
     sfs_compare_ids, vp->v_data);
 return (err);
}
