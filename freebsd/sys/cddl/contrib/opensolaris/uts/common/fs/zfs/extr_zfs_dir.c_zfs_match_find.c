
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int z_id; } ;
typedef TYPE_1__ znode_t ;
struct TYPE_6__ {int z_os; scalar_t__ z_norm; } ;
typedef TYPE_2__ zfsvfs_t ;
typedef int uint64_t ;
typedef int matchtype_t ;


 int ZFS_DIRENT_OBJ (int ) ;
 int zap_lookup (int ,int ,char const*,int,int,int *) ;
 int zap_lookup_norm (int ,int ,char const*,int,int,int *,int ,int *,int ,int *) ;

__attribute__((used)) static int
zfs_match_find(zfsvfs_t *zfsvfs, znode_t *dzp, const char *name,
    matchtype_t mt, uint64_t *zoid)
{
 int error;

 if (zfsvfs->z_norm) {





  error = zap_lookup_norm(zfsvfs->z_os, dzp->z_id, name, 8, 1,
      zoid, mt, ((void*)0), 0, ((void*)0));
 } else {
  error = zap_lookup(zfsvfs->z_os, dzp->z_id, name, 8, 1, zoid);
 }
 *zoid = ZFS_DIRENT_OBJ(*zoid);

 return (error);
}
