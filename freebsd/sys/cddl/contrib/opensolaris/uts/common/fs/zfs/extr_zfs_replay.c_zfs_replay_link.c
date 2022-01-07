
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int znode_t ;
typedef int zfsvfs_t ;
struct componentname {char* cn_nameptr; int cn_flags; int cn_thread; int cn_cred; } ;
struct TYPE_4__ {int lrc_txtype; } ;
struct TYPE_5__ {TYPE_1__ lr_common; int lr_link_obj; int lr_doid; } ;
typedef TYPE_2__ lr_link_t ;
typedef scalar_t__ boolean_t ;


 int FIGNORECASE ;
 int LK_EXCLUSIVE ;
 int LK_RETRY ;
 int SAVENAME ;
 int TX_CI ;
 int VN_RELE (int ) ;
 int VOP_LINK (int ,int ,struct componentname*) ;
 int VOP_UNLOCK (int ,int ) ;
 int ZTOV (int *) ;
 int byteswap_uint64_array (TYPE_2__*,int) ;
 int curthread ;
 int kcred ;
 int vn_lock (int ,int) ;
 int zfs_zget (int *,int ,int **) ;

__attribute__((used)) static int
zfs_replay_link(void *arg1, void *arg2, boolean_t byteswap)
{
 zfsvfs_t *zfsvfs = arg1;
 lr_link_t *lr = arg2;
 char *name = (char *)(lr + 1);
 znode_t *dzp, *zp;
 struct componentname cn;
 int error;
 int vflg = 0;

 if (byteswap)
  byteswap_uint64_array(lr, sizeof (*lr));

 if ((error = zfs_zget(zfsvfs, lr->lr_doid, &dzp)) != 0)
  return (error);

 if ((error = zfs_zget(zfsvfs, lr->lr_link_obj, &zp)) != 0) {
  VN_RELE(ZTOV(dzp));
  return (error);
 }

 if (lr->lr_common.lrc_txtype & TX_CI)
  vflg |= FIGNORECASE;

 cn.cn_nameptr = name;
 cn.cn_cred = kcred;
 cn.cn_thread = curthread;
 cn.cn_flags = SAVENAME;

 vn_lock(ZTOV(dzp), LK_EXCLUSIVE | LK_RETRY);
 vn_lock(ZTOV(zp), LK_EXCLUSIVE | LK_RETRY);
 error = VOP_LINK(ZTOV(dzp), ZTOV(zp), &cn );
 VOP_UNLOCK(ZTOV(zp), 0);
 VOP_UNLOCK(ZTOV(dzp), 0);

 VN_RELE(ZTOV(zp));
 VN_RELE(ZTOV(dzp));

 return (error);
}
