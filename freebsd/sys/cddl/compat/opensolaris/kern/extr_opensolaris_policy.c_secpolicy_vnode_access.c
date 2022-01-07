
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ v_type; int v_mount; } ;
typedef TYPE_1__ vnode_t ;
typedef int uid_t ;
typedef int cred_t ;
typedef int accmode_t ;


 int EACCES ;
 int PRIV_VFS_EXEC ;
 int PRIV_VFS_LOOKUP ;
 int PRIV_VFS_READ ;
 int PRIV_VFS_WRITE ;
 scalar_t__ VDIR ;
 int VEXEC ;
 int VREAD ;
 int VWRITE ;
 scalar_t__ priv_check_cred (int *,int ) ;
 scalar_t__ secpolicy_fs_owner (int ,int *) ;

int
secpolicy_vnode_access(cred_t *cr, vnode_t *vp, uid_t owner, accmode_t accmode)
{

 if (secpolicy_fs_owner(vp->v_mount, cr) == 0)
  return (0);

 if ((accmode & VREAD) && priv_check_cred(cr, PRIV_VFS_READ) != 0)
  return (EACCES);
 if ((accmode & VWRITE) &&
     priv_check_cred(cr, PRIV_VFS_WRITE) != 0) {
  return (EACCES);
 }
 if (accmode & VEXEC) {
  if (vp->v_type == VDIR) {
   if (priv_check_cred(cr, PRIV_VFS_LOOKUP) != 0)
    return (EACCES);
  } else {
   if (priv_check_cred(cr, PRIV_VFS_EXEC) != 0)
    return (EACCES);
  }
 }
 return (0);
}
