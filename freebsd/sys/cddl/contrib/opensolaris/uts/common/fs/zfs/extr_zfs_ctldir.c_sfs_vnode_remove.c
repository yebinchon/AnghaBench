
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode {int dummy; } ;


 int vfs_hash_remove (struct vnode*) ;

__attribute__((used)) static void
sfs_vnode_remove(struct vnode *vp)
{
 vfs_hash_remove(vp);
}
