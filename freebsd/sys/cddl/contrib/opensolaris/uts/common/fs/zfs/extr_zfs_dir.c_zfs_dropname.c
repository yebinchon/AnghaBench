
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int z_id; TYPE_1__* z_zfsvfs; } ;
typedef TYPE_2__ znode_t ;
typedef int matchtype_t ;
typedef int dmu_tx_t ;
struct TYPE_5__ {scalar_t__ z_case; int z_os; scalar_t__ z_norm; } ;


 int MT_MATCH_CASE ;
 int MT_NORMALIZE ;
 scalar_t__ ZFS_CASE_MIXED ;
 int zap_remove (int ,int ,char const*,int *) ;
 int zap_remove_norm (int ,int ,char const*,int ,int *) ;

__attribute__((used)) static int
zfs_dropname(znode_t *dzp, const char *name, znode_t *zp, dmu_tx_t *tx,
    int flag)
{
 int error;

 if (zp->z_zfsvfs->z_norm) {
  matchtype_t mt = MT_NORMALIZE;

  if (zp->z_zfsvfs->z_case == ZFS_CASE_MIXED) {
   mt |= MT_MATCH_CASE;
  }

  error = zap_remove_norm(zp->z_zfsvfs->z_os, dzp->z_id,
      name, mt, tx);
 } else {
  error = zap_remove(zp->z_zfsvfs->z_os, dzp->z_id, name, tx);
 }

 return (error);
}
