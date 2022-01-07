
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int znode_t ;
typedef int zfsvfs_t ;
struct TYPE_6__ {int lr_offset; int lr_length; int lr_foid; } ;
typedef TYPE_1__ lr_truncate_t ;
struct TYPE_7__ {int l_len; int l_start; scalar_t__ l_whence; int l_type; } ;
typedef TYPE_2__ flock64_t ;
typedef int fl ;
typedef scalar_t__ boolean_t ;


 int EOPNOTSUPP ;
 int FOFFMAX ;
 int FWRITE ;
 int F_FREESP ;
 int F_WRLCK ;
 int VN_RELE (int ) ;
 int VOP_SPACE (int ,int ,TYPE_2__*,int,int ,int ,int *) ;
 int ZFS_LOG (int ,char*) ;
 int ZTOV (int *) ;
 int byteswap_uint64_array (TYPE_1__*,int) ;
 int bzero (TYPE_2__*,int) ;
 int kcred ;
 int zfs_zget (int *,int ,int **) ;

__attribute__((used)) static int
zfs_replay_truncate(void *arg1, void *arg2, boolean_t byteswap)
{
 ZFS_LOG(0, "Unexpected code path, report to pjd@FreeBSD.org");
 return (EOPNOTSUPP);

}
