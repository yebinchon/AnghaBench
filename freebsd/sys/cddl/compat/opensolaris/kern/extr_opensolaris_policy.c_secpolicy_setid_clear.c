
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int v_mount; } ;
typedef TYPE_1__ vnode_t ;
struct vattr {int va_mode; int va_mask; } ;
typedef int cred_t ;


 int AT_MODE ;
 int PRIV_VFS_RETAINSUGID ;
 int S_ISGID ;
 int S_ISUID ;
 scalar_t__ priv_check_cred (int *,int ) ;
 scalar_t__ secpolicy_fs_owner (int ,int *) ;

void
secpolicy_setid_clear(struct vattr *vap, vnode_t *vp, cred_t *cr)
{

 if (secpolicy_fs_owner(vp->v_mount, cr) == 0)
  return;

 if ((vap->va_mode & (S_ISUID | S_ISGID)) != 0) {
  if (priv_check_cred(cr, PRIV_VFS_RETAINSUGID)) {
   vap->va_mask |= AT_MODE;
   vap->va_mode &= ~(S_ISUID|S_ISGID);
  }
 }
}
