
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct receive_writer_arg {int * os; int max_object; int guid_to_ds_map; } ;
struct drr_write_byref {scalar_t__ drr_toguid; scalar_t__ drr_refguid; scalar_t__ drr_offset; int drr_object; scalar_t__ drr_length; int drr_refoffset; int drr_refobject; } ;
typedef int objset_t ;
struct TYPE_7__ {scalar_t__ guid; int gme_ds; } ;
typedef TYPE_1__ guid_map_entry_t ;
typedef int dmu_tx_t ;
struct TYPE_8__ {int db_data; } ;
typedef TYPE_2__ dmu_buf_t ;
typedef int avl_index_t ;


 int DMU_READ_PREFETCH ;
 int EINVAL ;
 int FTAG ;
 int SET_ERROR (int ) ;
 int TXG_WAIT ;
 TYPE_1__* avl_find (int ,TYPE_1__*,int *) ;
 int dmu_buf_hold (int *,int ,int ,int ,TYPE_2__**,int ) ;
 int dmu_buf_rele (TYPE_2__*,int ) ;
 scalar_t__ dmu_objset_from_ds (int ,int **) ;
 int dmu_tx_abort (int *) ;
 int dmu_tx_assign (int *,int ) ;
 int dmu_tx_commit (int *) ;
 int * dmu_tx_create (int *) ;
 int dmu_tx_hold_write (int *,int ,scalar_t__,scalar_t__) ;
 int dmu_write (int *,int ,scalar_t__,scalar_t__,int ,int *) ;
 int save_resume_state (struct receive_writer_arg*,int ,scalar_t__,int *) ;

__attribute__((used)) static int
receive_write_byref(struct receive_writer_arg *rwa,
    struct drr_write_byref *drrwbr)
{
 dmu_tx_t *tx;
 int err;
 guid_map_entry_t gmesrch;
 guid_map_entry_t *gmep;
 avl_index_t where;
 objset_t *ref_os = ((void*)0);
 dmu_buf_t *dbp;

 if (drrwbr->drr_offset + drrwbr->drr_length < drrwbr->drr_offset)
  return (SET_ERROR(EINVAL));





 if (drrwbr->drr_toguid != drrwbr->drr_refguid) {
  gmesrch.guid = drrwbr->drr_refguid;
  if ((gmep = avl_find(rwa->guid_to_ds_map, &gmesrch,
      &where)) == ((void*)0)) {
   return (SET_ERROR(EINVAL));
  }
  if (dmu_objset_from_ds(gmep->gme_ds, &ref_os))
   return (SET_ERROR(EINVAL));
 } else {
  ref_os = rwa->os;
 }

 if (drrwbr->drr_object > rwa->max_object)
  rwa->max_object = drrwbr->drr_object;

 err = dmu_buf_hold(ref_os, drrwbr->drr_refobject,
     drrwbr->drr_refoffset, FTAG, &dbp, DMU_READ_PREFETCH);
 if (err != 0)
  return (err);

 tx = dmu_tx_create(rwa->os);

 dmu_tx_hold_write(tx, drrwbr->drr_object,
     drrwbr->drr_offset, drrwbr->drr_length);
 err = dmu_tx_assign(tx, TXG_WAIT);
 if (err != 0) {
  dmu_tx_abort(tx);
  return (err);
 }
 dmu_write(rwa->os, drrwbr->drr_object,
     drrwbr->drr_offset, drrwbr->drr_length, dbp->db_data, tx);
 dmu_buf_rele(dbp, FTAG);


 save_resume_state(rwa, drrwbr->drr_object, drrwbr->drr_offset, tx);
 dmu_tx_commit(tx);
 return (0);
}
