
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ uint32_t ;
typedef int lzma_ret ;
struct TYPE_15__ {scalar_t__ read_pos; scalar_t__ read_ahead; scalar_t__ read_limit; scalar_t__ action; } ;
typedef TYPE_1__ lzma_mf ;
struct TYPE_16__ {int is_flushed; int rc; scalar_t__ fast_mode; int is_initialized; } ;
typedef TYPE_2__ lzma_lzma1_encoder ;


 scalar_t__ LOOP_INPUT_MAX ;
 scalar_t__ LZMA2_CHUNK_MAX ;
 int LZMA_OK ;
 scalar_t__ LZMA_RUN ;
 int LZMA_STREAM_END ;
 scalar_t__ UINT32_MAX ;
 int assert (int) ;
 int encode_eopm (TYPE_2__*,scalar_t__) ;
 int encode_init (TYPE_2__*,TYPE_1__*) ;
 int encode_symbol (TYPE_2__*,TYPE_1__*,scalar_t__,scalar_t__,scalar_t__) ;
 int lzma_lzma_optimum_fast (TYPE_2__*,TYPE_1__*,scalar_t__*,scalar_t__*) ;
 int lzma_lzma_optimum_normal (TYPE_2__*,TYPE_1__*,scalar_t__*,scalar_t__*,scalar_t__) ;
 scalar_t__ mf_position (TYPE_1__*) ;
 scalar_t__ rc_encode (int *,int *,size_t*,size_t) ;
 int rc_flush (int *) ;
 scalar_t__ rc_pending (int *) ;

extern lzma_ret
lzma_lzma_encode(lzma_lzma1_encoder *restrict coder, lzma_mf *restrict mf,
  uint8_t *restrict out, size_t *restrict out_pos,
  size_t out_size, uint32_t limit)
{

 if (!coder->is_initialized && !encode_init(coder, mf))
  return LZMA_OK;


 uint32_t position = mf_position(mf);

 while (1) {






  if (rc_encode(&coder->rc, out, out_pos, out_size)) {
   assert(limit == UINT32_MAX);
   return LZMA_OK;
  }




  if (limit != UINT32_MAX
    && (mf->read_pos - mf->read_ahead >= limit
     || *out_pos + rc_pending(&coder->rc)
      >= LZMA2_CHUNK_MAX
       - LOOP_INPUT_MAX))
   break;


  if (mf->read_pos >= mf->read_limit) {
   if (mf->action == LZMA_RUN)
    return LZMA_OK;

   if (mf->read_ahead == 0)
    break;
  }
  uint32_t len;
  uint32_t back;

  if (coder->fast_mode)
   lzma_lzma_optimum_fast(coder, mf, &back, &len);
  else
   lzma_lzma_optimum_normal(
     coder, mf, &back, &len, position);

  encode_symbol(coder, mf, back, len, position);

  position += len;
 }

 if (!coder->is_flushed) {
  coder->is_flushed = 1;



  if (limit == UINT32_MAX)
   encode_eopm(coder, position);


  rc_flush(&coder->rc);





  if (rc_encode(&coder->rc, out, out_pos, out_size)) {
   assert(limit == UINT32_MAX);
   return LZMA_OK;
  }
 }


 coder->is_flushed = 0;

 return LZMA_STREAM_END;
}
