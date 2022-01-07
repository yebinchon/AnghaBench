
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {int * z_zfsvfs; } ;
typedef TYPE_1__ znode_t ;
typedef int zfsvfs_t ;
struct TYPE_12__ {int v_type; int v_vfsp; } ;
typedef TYPE_2__ vnode_t ;
typedef int ulong_t ;
typedef int cred_t ;
typedef int caller_context_t ;


 int ACL_MAX_ENTRIES ;
 int ENOENT ;
 int EOPNOTSUPP ;
 int LONG_MAX ;
 int MIN (int ,int ) ;
 scalar_t__ SPA_MINBLOCKSIZE ;
 int VDIR ;
 int VFSFT_ACCESS_FILTER ;
 int VFSFT_SYSATTR_VIEWS ;
 int VREG ;
 TYPE_1__* VTOZ (TYPE_2__*) ;
 int ZEXISTS ;
 int ZFS_ENTER (int *) ;
 int ZFS_EXIT (int *) ;
 int ZFS_LINK_MAX ;
 int ZFS_VERIFY_ZP (TYPE_1__*) ;
 int ZSHARED ;
 int ZTOV (TYPE_1__*) ;
 int ZXATTR ;
 int _ACL_ACE_ENABLED ;
 int vfs_has_feature (int ,int ) ;
 int vrele (int ) ;
 int zfs_dirempty (TYPE_1__*) ;
 int zfs_dirent_lookup (TYPE_1__*,char*,TYPE_1__**,int) ;

__attribute__((used)) static int
zfs_pathconf(vnode_t *vp, int cmd, ulong_t *valp, cred_t *cr,
    caller_context_t *ct)
{
 znode_t *zp, *xzp;
 zfsvfs_t *zfsvfs;
 int error;

 switch (cmd) {
 case 133:
  *valp = MIN(LONG_MAX, ZFS_LINK_MAX);
  return (0);

 case 134:
  *valp = 64;
  return (0);
 case 132:
  *valp = (int)SPA_MINBLOCKSIZE;
  return (0);






 case 137:
  *valp = 0;
  return (0);

 case 136:
  *valp = 1;
  return (0);

 case 135:
  *valp = ACL_MAX_ENTRIES;
  return (0);

 default:
  return (EOPNOTSUPP);
 }
}
