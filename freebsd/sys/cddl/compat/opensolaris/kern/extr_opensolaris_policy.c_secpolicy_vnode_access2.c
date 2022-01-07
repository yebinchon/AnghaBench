
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vnode_t ;
typedef int uid_t ;
typedef int cred_t ;
typedef int accmode_t ;


 int secpolicy_vnode_access (int *,int *,int ,int) ;

int
secpolicy_vnode_access2(cred_t *cr, vnode_t *vp, uid_t owner,
    accmode_t curmode, accmode_t wantmode)
{
 accmode_t mode;

 mode = ~curmode & wantmode;

 if (mode == 0)
  return (0);

 return (secpolicy_vnode_access(cr, vp, owner, mode));
}
