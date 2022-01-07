
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* z_parent; } ;
typedef TYPE_2__ zfsvfs_t ;
struct TYPE_7__ {TYPE_2__* vfs_data; } ;
typedef TYPE_3__ vfs_t ;
struct ucred {int dummy; } ;
struct sockaddr {int dummy; } ;
struct TYPE_5__ {int z_vfs; } ;


 int vfs_stdcheckexp (int ,struct sockaddr*,int*,struct ucred**,int*,int**) ;

__attribute__((used)) static int
zfs_checkexp(vfs_t *vfsp, struct sockaddr *nam, int *extflagsp,
    struct ucred **credanonp, int *numsecflavors, int **secflavors)
{
 zfsvfs_t *zfsvfs = vfsp->vfs_data;
 return (vfs_stdcheckexp(zfsvfs->z_parent->z_vfs, nam, extflagsp,
     credanonp, numsecflavors, secflavors));
}
