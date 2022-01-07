
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int z_id; TYPE_1__* z_zfsvfs; } ;
typedef TYPE_2__ znode_t ;
typedef int uint64_t ;
struct TYPE_4__ {scalar_t__ z_version; } ;


 int IFTODT (int) ;
 scalar_t__ ZPL_VERSION_DIRENT_TYPE ;

__attribute__((used)) static uint64_t
zfs_dirent(znode_t *zp, uint64_t mode)
{
 uint64_t de = zp->z_id;

 if (zp->z_zfsvfs->z_version >= ZPL_VERSION_DIRENT_TYPE)
  de |= IFTODT(mode) << 60;
 return (de);
}
