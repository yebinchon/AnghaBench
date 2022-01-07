
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int zap_t ;
typedef scalar_t__ zap_flags_t ;
typedef int uint64_t ;
typedef int objset_t ;
struct TYPE_7__ {uintptr_t mz_salt; int mz_normflags; int mz_block_type; } ;
typedef TYPE_1__ mzap_phys_t ;
typedef int dmu_tx_t ;
struct TYPE_8__ {TYPE_1__* db_data; } ;
typedef TYPE_2__ dmu_buf_t ;


 int B_FALSE ;
 int DMU_READ_NO_PREFETCH ;
 int FTAG ;
 int RW_WRITER ;
 int VERIFY0 (int ) ;
 int ZBT_MICRO ;
 int dmu_buf_hold (int *,int,int ,int ,TYPE_2__**,int ) ;
 int dmu_buf_rele (TYPE_2__*,int ) ;
 int dmu_buf_will_dirty (TYPE_2__*,int *) ;
 int mzap_upgrade (int **,int ,int *,scalar_t__) ;
 int zap_lockdir_impl (TYPE_2__*,int ,int *,int ,int ,int ,int **) ;
 int zap_unlockdir (int *,int ) ;

void
mzap_create_impl(objset_t *os, uint64_t obj, int normflags, zap_flags_t flags,
    dmu_tx_t *tx)
{
 dmu_buf_t *db;

 VERIFY0(dmu_buf_hold(os, obj, 0, FTAG, &db, DMU_READ_NO_PREFETCH));

 dmu_buf_will_dirty(db, tx);
 mzap_phys_t *zp = db->db_data;
 zp->mz_block_type = ZBT_MICRO;
 zp->mz_salt = ((uintptr_t)db ^ (uintptr_t)tx ^ (obj << 1)) | 1ULL;
 zp->mz_normflags = normflags;

 if (flags != 0) {
  zap_t *zap;

  VERIFY0(zap_lockdir_impl(db, FTAG, tx, RW_WRITER,
      B_FALSE, B_FALSE, &zap));
  VERIFY0(mzap_upgrade(&zap, FTAG, tx, flags));
  zap_unlockdir(zap, FTAG);
 } else {
  dmu_buf_rele(db, FTAG);
 }
}
