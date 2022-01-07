
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int v_mount; } ;
typedef TYPE_1__ vnode_t ;
typedef int gid_t ;
typedef int cred_t ;


 int PRIV_VFS_SETGID ;
 scalar_t__ groupmember (int ,int *) ;
 int priv_check_cred (int *,int ) ;
 scalar_t__ secpolicy_fs_owner (int ,int *) ;

int
secpolicy_vnode_setids_setgids(vnode_t *vp, cred_t *cr, gid_t gid)
{

 if (groupmember(gid, cr))
  return (0);
 if (secpolicy_fs_owner(vp->v_mount, cr) == 0)
  return (0);
 return (priv_check_cred(cr, PRIV_VFS_SETGID));
}
