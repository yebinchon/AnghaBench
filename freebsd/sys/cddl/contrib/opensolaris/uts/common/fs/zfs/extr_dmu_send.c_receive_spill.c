
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct receive_writer_arg {scalar_t__ max_object; int os; } ;
struct drr_spill {scalar_t__ drr_object; int drr_length; } ;
typedef int dmu_tx_t ;
struct TYPE_8__ {int db_data; int db_size; int db_object; } ;
typedef TYPE_1__ dmu_buf_t ;


 int EINVAL ;
 int FTAG ;
 int SET_ERROR (int ) ;
 int SPA_MINBLOCKSIZE ;
 int TXG_WAIT ;
 int VERIFY (int) ;
 int VERIFY0 (int ) ;
 int bcopy (void*,int ,int ) ;
 scalar_t__ dbuf_spill_set_blksz (TYPE_1__*,int ,int *) ;
 int dmu_bonus_hold (int ,scalar_t__,int ,TYPE_1__**) ;
 int dmu_buf_rele (TYPE_1__*,int ) ;
 int dmu_buf_will_dirty (TYPE_1__*,int *) ;
 scalar_t__ dmu_object_info (int ,scalar_t__,int *) ;
 int dmu_objset_spa (int ) ;
 int dmu_spill_hold_by_bonus (TYPE_1__*,int ,TYPE_1__**) ;
 int dmu_tx_abort (int *) ;
 int dmu_tx_assign (int *,int ) ;
 int dmu_tx_commit (int *) ;
 int * dmu_tx_create (int ) ;
 int dmu_tx_hold_spill (int *,int ) ;
 int spa_maxblocksize (int ) ;

__attribute__((used)) static int
receive_spill(struct receive_writer_arg *rwa, struct drr_spill *drrs,
    void *data)
{
 dmu_tx_t *tx;
 dmu_buf_t *db, *db_spill;
 int err;

 if (drrs->drr_length < SPA_MINBLOCKSIZE ||
     drrs->drr_length > spa_maxblocksize(dmu_objset_spa(rwa->os)))
  return (SET_ERROR(EINVAL));

 if (dmu_object_info(rwa->os, drrs->drr_object, ((void*)0)) != 0)
  return (SET_ERROR(EINVAL));

 if (drrs->drr_object > rwa->max_object)
  rwa->max_object = drrs->drr_object;

 VERIFY0(dmu_bonus_hold(rwa->os, drrs->drr_object, FTAG, &db));
 if ((err = dmu_spill_hold_by_bonus(db, FTAG, &db_spill)) != 0) {
  dmu_buf_rele(db, FTAG);
  return (err);
 }

 tx = dmu_tx_create(rwa->os);

 dmu_tx_hold_spill(tx, db->db_object);

 err = dmu_tx_assign(tx, TXG_WAIT);
 if (err != 0) {
  dmu_buf_rele(db, FTAG);
  dmu_buf_rele(db_spill, FTAG);
  dmu_tx_abort(tx);
  return (err);
 }
 dmu_buf_will_dirty(db_spill, tx);

 if (db_spill->db_size < drrs->drr_length)
  VERIFY(0 == dbuf_spill_set_blksz(db_spill,
      drrs->drr_length, tx));
 bcopy(data, db_spill->db_data, drrs->drr_length);

 dmu_buf_rele(db, FTAG);
 dmu_buf_rele(db_spill, FTAG);

 dmu_tx_commit(tx);
 return (0);
}
