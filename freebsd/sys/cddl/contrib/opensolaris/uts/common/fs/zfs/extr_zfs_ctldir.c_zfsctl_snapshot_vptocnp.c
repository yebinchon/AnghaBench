
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int v_mount; struct mount* v_mountedhere; TYPE_2__* v_data; } ;
typedef TYPE_1__ vnode_t ;
struct vop_vptocnp_args {size_t* a_buflen; scalar_t__ a_buf; TYPE_1__** a_vpp; TYPE_1__* a_vp; } ;
struct mount {int dummy; } ;
struct TYPE_10__ {int sn_name; } ;
typedef TYPE_2__ sfs_node_t ;
typedef enum vgetstate { ____Placeholder_vgetstate } vgetstate ;


 int ENOENT ;
 int ENOMEM ;
 int KASSERT (int,char*) ;
 int LK_RETRY ;
 int LK_SHARED ;
 int SET_ERROR (int ) ;
 int VOP_ISLOCKED (TYPE_1__*) ;
 int VOP_UNLOCK (TYPE_1__*,int ) ;
 int bcopy (int ,scalar_t__,size_t) ;
 size_t strlen (int ) ;
 int vfs_busy (struct mount*,int ) ;
 int vfs_unbusy (struct mount*) ;
 int vget_finish (TYPE_1__*,int,int) ;
 int vget_prep (TYPE_1__*) ;
 int vput (TYPE_1__*) ;
 int zfsctl_snapdir_vnode (int ,int *,int ,TYPE_1__**) ;

__attribute__((used)) static int
zfsctl_snapshot_vptocnp(struct vop_vptocnp_args *ap)
{
 struct mount *mp;
 vnode_t *dvp;
 vnode_t *vp;
 sfs_node_t *node;
 size_t len;
 enum vgetstate vs;
 int locked;
 int error;

 vp = ap->a_vp;
 node = vp->v_data;
 len = strlen(node->sn_name);
 if (*ap->a_buflen < len)
  return (SET_ERROR(ENOMEM));







 mp = vp->v_mountedhere;
 if (mp == ((void*)0))
  return (SET_ERROR(ENOENT));
 error = vfs_busy(mp, 0);
 KASSERT(error == 0, ("vfs_busy(mp, 0) failed with %d", error));







 locked = VOP_ISLOCKED(vp);
 vs = vget_prep(vp);
 vput(vp);


 error = zfsctl_snapdir_vnode(vp->v_mount, ((void*)0), LK_SHARED, &dvp);
 if (error == 0) {
  VOP_UNLOCK(dvp, 0);
  *ap->a_vpp = dvp;
  *ap->a_buflen -= len;
  bcopy(node->sn_name, ap->a_buf + *ap->a_buflen, len);
 }
 vfs_unbusy(mp);
 vget_finish(vp, locked | LK_RETRY, vs);
 return (error);
}
