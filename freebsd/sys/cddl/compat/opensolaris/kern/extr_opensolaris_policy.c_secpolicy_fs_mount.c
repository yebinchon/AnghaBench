
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vnode_t ;
struct mount {int dummy; } ;
typedef int cred_t ;


 int PRIV_VFS_MOUNT ;
 int priv_check_cred (int *,int ) ;

int
secpolicy_fs_mount(cred_t *cr, vnode_t *mvp, struct mount *vfsp)
{

 return (priv_check_cred(cr, PRIV_VFS_MOUNT));
}
