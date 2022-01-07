
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* z_zfsvfs; } ;
typedef TYPE_2__ znode_t ;
struct TYPE_4__ {int z_version; } ;


 int zfs_acl_version (int ) ;

__attribute__((used)) static int
zfs_acl_version_zp(znode_t *zp)
{
 return (zfs_acl_version(zp->z_zfsvfs->z_version));
}
