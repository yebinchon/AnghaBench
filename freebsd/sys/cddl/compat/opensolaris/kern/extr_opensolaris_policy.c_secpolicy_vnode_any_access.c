
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int v_type; int v_mount; } ;
typedef TYPE_1__ vnode_t ;
typedef scalar_t__ uid_t ;
typedef int privs ;
struct TYPE_8__ {scalar_t__ cr_uid; } ;
typedef TYPE_2__ cred_t ;
typedef int boolean_t ;


 int B_FALSE ;
 int EPERM ;





 int VDIR ;
 scalar_t__ priv_check_cred (TYPE_2__*,int) ;
 scalar_t__ secpolicy_fs_owner (int ,TYPE_2__*) ;

int
secpolicy_vnode_any_access(cred_t *cr, vnode_t *vp, uid_t owner)
{
 static int privs[] = {
     132,
     129,
     128,
     131,
     130
 };
 int i;

 if (secpolicy_fs_owner(vp->v_mount, cr) == 0)
  return (0);


 if (owner == cr->cr_uid)
  return (0);

 for (i = 0; i < sizeof (privs)/sizeof (int); i++) {
  boolean_t allzone = B_FALSE;
  int priv;

  switch (priv = privs[i]) {
  case 131:
   if (vp->v_type == VDIR)
    continue;
   break;
  case 130:
   if (vp->v_type != VDIR)
    continue;
   break;
  }
  if (priv_check_cred(cr, priv) == 0)
   return (0);
 }
 return (EPERM);
}
