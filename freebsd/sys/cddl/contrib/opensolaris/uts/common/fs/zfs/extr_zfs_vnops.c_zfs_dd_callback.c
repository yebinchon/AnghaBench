
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode {int dummy; } ;
struct mount {int dummy; } ;


 int vn_lock (struct vnode*,int) ;
 int vrele (struct vnode*) ;

__attribute__((used)) static int
zfs_dd_callback(struct mount *mp, void *arg, int lkflags, struct vnode **vpp)
{
 int error;

 *vpp = arg;
 error = vn_lock(*vpp, lkflags);
 if (error != 0)
  vrele(*vpp);
 return (error);
}
