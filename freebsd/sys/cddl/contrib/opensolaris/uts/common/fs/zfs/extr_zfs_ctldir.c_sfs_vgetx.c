
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct vop_vector {int dummy; } ;
struct vnode {int * v_data; int v_vnlock; } ;
struct mount {int dummy; } ;
typedef int (* sfs_vnode_setup_fn ) (struct vnode*,void*) ;


 int KASSERT_IMPLY (int,int ,char*) ;
 int LK_EXCLUSIVE ;
 int getnewvnode (char const*,struct mount*,struct vop_vector*,struct vnode**) ;
 int insmntque (struct vnode*,struct mount*) ;
 int lockmgr (int ,int ,int *) ;
 int sfs_vnode_get (struct mount*,int,int ,int ,struct vnode**) ;
 int sfs_vnode_insert (struct vnode*,int,int ,int ,struct vnode**) ;

__attribute__((used)) static int
sfs_vgetx(struct mount *mp, int flags, uint64_t parent_id, uint64_t id,
    const char *tag, struct vop_vector *vops,
    sfs_vnode_setup_fn setup, void *arg,
    struct vnode **vpp)
{
 struct vnode *vp;
 int error;

 error = sfs_vnode_get(mp, flags, parent_id, id, vpp);
 if (error != 0 || *vpp != ((void*)0)) {
  KASSERT_IMPLY(error == 0, (*vpp)->v_data != ((void*)0),
      "sfs vnode with no data");
  return (error);
 }


 error = getnewvnode(tag, mp, vops, &vp);
 if (error != 0) {
  *vpp = ((void*)0);
  return (error);
 }




 lockmgr(vp->v_vnlock, LK_EXCLUSIVE, ((void*)0));
 error = insmntque(vp, mp);
 if (error != 0) {
  *vpp = ((void*)0);
  return (error);
 }

 setup(vp, arg);

 error = sfs_vnode_insert(vp, flags, parent_id, id, vpp);
 if (error != 0 || *vpp != ((void*)0)) {
  KASSERT_IMPLY(error == 0, (*vpp)->v_data != ((void*)0),
      "sfs vnode with no data");
  return (error);
 }

 *vpp = vp;
 return (0);
}
