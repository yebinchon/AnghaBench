
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct receive_writer_arg {int byteswap; int os; int max_object; } ;
struct drr_write_embedded {scalar_t__ drr_psize; scalar_t__ drr_etype; scalar_t__ drr_compression; scalar_t__ drr_offset; int drr_object; int drr_lsize; scalar_t__ drr_length; } ;
typedef int dmu_tx_t ;


 scalar_t__ BPE_PAYLOAD_SIZE ;
 int EINVAL ;
 scalar_t__ NUM_BP_EMBEDDED_TYPES ;
 int TXG_WAIT ;
 int ZFS_HOST_BYTEORDER ;
 scalar_t__ ZIO_COMPRESS_FUNCTIONS ;
 int dmu_tx_abort (int *) ;
 int dmu_tx_assign (int *,int ) ;
 int dmu_tx_commit (int *) ;
 int * dmu_tx_create (int ) ;
 int dmu_tx_hold_write (int *,int ,scalar_t__,scalar_t__) ;
 int dmu_write_embedded (int ,int ,scalar_t__,void*,scalar_t__,scalar_t__,int ,scalar_t__,int,int *) ;
 int save_resume_state (struct receive_writer_arg*,int ,scalar_t__,int *) ;

__attribute__((used)) static int
receive_write_embedded(struct receive_writer_arg *rwa,
    struct drr_write_embedded *drrwe, void *data)
{
 dmu_tx_t *tx;
 int err;

 if (drrwe->drr_offset + drrwe->drr_length < drrwe->drr_offset)
  return (EINVAL);

 if (drrwe->drr_psize > BPE_PAYLOAD_SIZE)
  return (EINVAL);

 if (drrwe->drr_etype >= NUM_BP_EMBEDDED_TYPES)
  return (EINVAL);
 if (drrwe->drr_compression >= ZIO_COMPRESS_FUNCTIONS)
  return (EINVAL);

 if (drrwe->drr_object > rwa->max_object)
  rwa->max_object = drrwe->drr_object;

 tx = dmu_tx_create(rwa->os);

 dmu_tx_hold_write(tx, drrwe->drr_object,
     drrwe->drr_offset, drrwe->drr_length);
 err = dmu_tx_assign(tx, TXG_WAIT);
 if (err != 0) {
  dmu_tx_abort(tx);
  return (err);
 }

 dmu_write_embedded(rwa->os, drrwe->drr_object,
     drrwe->drr_offset, data, drrwe->drr_etype,
     drrwe->drr_compression, drrwe->drr_lsize, drrwe->drr_psize,
     rwa->byteswap ^ ZFS_HOST_BYTEORDER, tx);


 save_resume_state(rwa, drrwe->drr_object, drrwe->drr_offset, tx);
 dmu_tx_commit(tx);
 return (0);
}
