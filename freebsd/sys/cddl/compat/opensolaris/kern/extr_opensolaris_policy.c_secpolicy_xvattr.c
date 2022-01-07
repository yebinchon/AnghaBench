
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int xvattr_t ;
typedef int vtype_t ;
struct TYPE_3__ {int v_mount; } ;
typedef TYPE_1__ vnode_t ;
typedef int uid_t ;
typedef int cred_t ;


 int PRIV_VFS_SYSFLAGS ;
 int priv_check_cred (int *,int ) ;
 scalar_t__ secpolicy_fs_owner (int ,int *) ;

int
secpolicy_xvattr(vnode_t *vp, xvattr_t *xvap, uid_t owner, cred_t *cr,
    vtype_t vtype)
{

 if (secpolicy_fs_owner(vp->v_mount, cr) == 0)
  return (0);
 return (priv_check_cred(cr, PRIV_VFS_SYSFLAGS));
}
