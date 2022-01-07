
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int znode_t ;
typedef int zfsvfs_t ;
typedef int vnode_t ;
struct componentname {char* cn_nameptr; int cn_flags; int cn_lkflags; int cn_thread; int cn_cred; int cn_nameiop; int cn_namelen; } ;
struct TYPE_4__ {int lrc_txtype; } ;
struct TYPE_5__ {TYPE_1__ lr_common; int lr_doid; } ;
typedef TYPE_2__ lr_remove_t ;
typedef scalar_t__ boolean_t ;


 int DELETE ;
 int ENOTSUP ;
 int FIGNORECASE ;
 int ISLASTCN ;
 int LK_EXCLUSIVE ;
 int LK_RETRY ;
 int SAVENAME ;
 int SET_ERROR (int ) ;
 int TX_CI ;


 int VN_RELE (int ) ;
 int VOP_LOOKUP (int ,int **,struct componentname*) ;
 int VOP_REMOVE (int ,int *,struct componentname*) ;
 int VOP_RMDIR (int ,int *,struct componentname*) ;
 int VOP_UNLOCK (int ,int ) ;
 int ZTOV (int *) ;
 int byteswap_uint64_array (TYPE_2__*,int) ;
 int curthread ;
 int kcred ;
 int strlen (char*) ;
 int vn_lock (int ,int) ;
 int vput (int *) ;
 int zfs_zget (int *,int ,int **) ;

__attribute__((used)) static int
zfs_replay_remove(void *arg1, void *arg2, boolean_t byteswap)
{
 zfsvfs_t *zfsvfs = arg1;
 lr_remove_t *lr = arg2;
 char *name = (char *)(lr + 1);
 znode_t *dzp;
 struct componentname cn;
 vnode_t *vp;
 int error;
 int vflg = 0;

 if (byteswap)
  byteswap_uint64_array(lr, sizeof (*lr));

 if ((error = zfs_zget(zfsvfs, lr->lr_doid, &dzp)) != 0)
  return (error);

 if (lr->lr_common.lrc_txtype & TX_CI)
  vflg |= FIGNORECASE;
 cn.cn_nameptr = name;
 cn.cn_namelen = strlen(name);
 cn.cn_nameiop = DELETE;
 cn.cn_flags = ISLASTCN | SAVENAME;
 cn.cn_lkflags = LK_EXCLUSIVE | LK_RETRY;
 cn.cn_cred = kcred;
 cn.cn_thread = curthread;
 vn_lock(ZTOV(dzp), LK_EXCLUSIVE | LK_RETRY);
 error = VOP_LOOKUP(ZTOV(dzp), &vp, &cn);
 if (error != 0) {
  VOP_UNLOCK(ZTOV(dzp), 0);
  goto fail;
 }

 switch ((int)lr->lr_common.lrc_txtype) {
 case 129:
  error = VOP_REMOVE(ZTOV(dzp), vp, &cn );
  break;
 case 128:
  error = VOP_RMDIR(ZTOV(dzp), vp, &cn );
  break;
 default:
  error = SET_ERROR(ENOTSUP);
 }
 vput(vp);
 VOP_UNLOCK(ZTOV(dzp), 0);

fail:
 VN_RELE(ZTOV(dzp));

 return (error);
}
