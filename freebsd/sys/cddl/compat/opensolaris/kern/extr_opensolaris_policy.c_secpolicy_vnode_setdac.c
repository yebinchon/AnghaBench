
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int v_mount; } ;
typedef TYPE_1__ vnode_t ;
typedef scalar_t__ uid_t ;
struct TYPE_8__ {scalar_t__ cr_uid; } ;
typedef TYPE_2__ cred_t ;


 int PRIV_VFS_ADMIN ;
 int priv_check_cred (TYPE_2__*,int ) ;
 scalar_t__ secpolicy_fs_owner (int ,TYPE_2__*) ;

int
secpolicy_vnode_setdac(vnode_t *vp, cred_t *cr, uid_t owner)
{

 if (owner == cr->cr_uid)
  return (0);
 if (secpolicy_fs_owner(vp->v_mount, cr) == 0)
  return (0);
 return (priv_check_cred(cr, PRIV_VFS_ADMIN));
}
