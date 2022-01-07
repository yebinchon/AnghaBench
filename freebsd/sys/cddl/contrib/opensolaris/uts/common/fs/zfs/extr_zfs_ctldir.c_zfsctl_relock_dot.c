
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int v_iflag; } ;
typedef TYPE_1__ vnode_t ;


 int ENOENT ;
 int LK_DOWNGRADE ;
 int LK_EXCLUSIVE ;
 int LK_RETRY ;
 int LK_UPGRADE ;
 int SET_ERROR (int ) ;
 int VI_DOOMED ;
 int VOP_ISLOCKED (TYPE_1__*) ;
 int vn_lock (TYPE_1__*,int) ;
 int vref (TYPE_1__*) ;
 int vrele (TYPE_1__*) ;

int
zfsctl_relock_dot(vnode_t *dvp, int ltype)
{
 vref(dvp);
 if (ltype != VOP_ISLOCKED(dvp)) {
  if (ltype == LK_EXCLUSIVE)
   vn_lock(dvp, LK_UPGRADE | LK_RETRY);
  else
   vn_lock(dvp, LK_DOWNGRADE | LK_RETRY);


  if ((dvp->v_iflag & VI_DOOMED) != 0) {
   vrele(dvp);
   return (SET_ERROR(ENOENT));
  }
 }
 return (0);
}
