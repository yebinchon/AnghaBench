
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ v_type; int v_mount; } ;
typedef TYPE_1__ vnode_t ;
struct vattr {int va_mask; scalar_t__ va_uid; scalar_t__ va_gid; int va_vaflags; int va_mode; } ;
typedef int cred_t ;


 int AT_ATIME ;
 int AT_GID ;
 int AT_MODE ;
 int AT_MTIME ;
 int AT_SIZE ;
 int AT_UID ;
 int EISDIR ;
 int PRIV_VFS_CHOWN ;
 int VA_UTIMES_NULL ;
 scalar_t__ VDIR ;
 int VWRITE ;
 int groupmember (scalar_t__,int *) ;
 int priv_check_cred (int *,int ) ;
 scalar_t__ secpolicy_fs_owner (int ,int *) ;
 int secpolicy_setid_clear (struct vattr*,TYPE_1__*,int *) ;
 int secpolicy_setid_setsticky_clear (TYPE_1__*,struct vattr*,struct vattr const*,int *) ;
 int secpolicy_vnode_setdac (TYPE_1__*,int *,scalar_t__) ;

int
secpolicy_vnode_setattr(cred_t *cr, vnode_t *vp, struct vattr *vap,
    const struct vattr *ovap, int flags,
    int unlocked_access(void *, int, cred_t *), void *node)
{
 int mask = vap->va_mask;
 int error;

 if (mask & AT_SIZE) {
  if (vp->v_type == VDIR)
   return (EISDIR);
  error = unlocked_access(node, VWRITE, cr);
  if (error)
   return (error);
 }
 if (mask & AT_MODE) {
  error = secpolicy_vnode_setdac(vp, cr, ovap->va_uid);
  if (error)
   return (error);
  error = secpolicy_setid_setsticky_clear(vp, vap, ovap, cr);
  if (error)
   return (error);
 } else {
  vap->va_mode = ovap->va_mode;
 }
 if (mask & (AT_UID | AT_GID)) {
  error = secpolicy_vnode_setdac(vp, cr, ovap->va_uid);
  if (error)
   return (error);






  if (((mask & AT_UID) && vap->va_uid != ovap->va_uid) ||
      ((mask & AT_GID) && vap->va_gid != ovap->va_gid &&
       !groupmember(vap->va_gid, cr))) {
   if (secpolicy_fs_owner(vp->v_mount, cr) != 0) {
    error = priv_check_cred(cr, PRIV_VFS_CHOWN);
    if (error)
     return (error);
   }
  }

  if (((mask & AT_UID) && vap->va_uid != ovap->va_uid) ||
      ((mask & AT_GID) && vap->va_gid != ovap->va_gid)) {
   secpolicy_setid_clear(vap, vp, cr);
  }
 }
 if (mask & (AT_ATIME | AT_MTIME)) {
  error = secpolicy_vnode_setdac(vp, cr, ovap->va_uid);
  if (error && (vap->va_vaflags & VA_UTIMES_NULL))
   error = unlocked_access(node, VWRITE, cr);
  if (error)
   return (error);
 }
 return (0);
}
