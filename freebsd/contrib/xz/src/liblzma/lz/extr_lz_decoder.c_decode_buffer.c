
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ lzma_ret ;
struct TYPE_8__ {scalar_t__ pos; scalar_t__ size; size_t limit; scalar_t__ need_reset; scalar_t__ buf; } ;
struct TYPE_6__ {scalar_t__ (* code ) (int ,TYPE_3__*,int const*,size_t*,size_t) ;int coder; } ;
struct TYPE_7__ {TYPE_3__ dict; TYPE_1__ lz; } ;
typedef TYPE_2__ lzma_coder ;


 scalar_t__ const LZMA_OK ;
 int assert (int) ;
 int lz_decoder_reset (TYPE_2__*) ;
 int memcpy (int *,scalar_t__,size_t const) ;
 size_t my_min (size_t,size_t) ;
 scalar_t__ stub1 (int ,TYPE_3__*,int const*,size_t*,size_t) ;

__attribute__((used)) static lzma_ret
decode_buffer(lzma_coder *coder,
  const uint8_t *restrict in, size_t *restrict in_pos,
  size_t in_size, uint8_t *restrict out,
  size_t *restrict out_pos, size_t out_size)
{
 while (1) {

  if (coder->dict.pos == coder->dict.size)
   coder->dict.pos = 0;



  const size_t dict_start = coder->dict.pos;





  coder->dict.limit = coder->dict.pos
    + my_min(out_size - *out_pos,
     coder->dict.size - coder->dict.pos);


  const lzma_ret ret = coder->lz.code(
    coder->lz.coder, &coder->dict,
    in, in_pos, in_size);



  const size_t copy_size = coder->dict.pos - dict_start;
  assert(copy_size <= out_size - *out_pos);
  memcpy(out + *out_pos, coder->dict.buf + dict_start,
    copy_size);
  *out_pos += copy_size;


  if (coder->dict.need_reset) {
   lz_decoder_reset(coder);



   if (ret != LZMA_OK || *out_pos == out_size)
    return ret;
  } else {
   if (ret != LZMA_OK || *out_pos == out_size
     || coder->dict.pos < coder->dict.size)
    return ret;
  }
 }
}
