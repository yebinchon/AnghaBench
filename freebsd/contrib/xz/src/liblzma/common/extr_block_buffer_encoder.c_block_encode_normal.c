
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ lzma_ret ;
struct TYPE_9__ {scalar_t__ (* code ) (int ,int const*,int const*,size_t*,size_t,int *,size_t*,size_t,int ) ;int coder; } ;
typedef TYPE_1__ lzma_next_coder ;
struct TYPE_10__ {size_t header_size; size_t compressed_size; int filters; } ;
typedef TYPE_2__ lzma_block ;
typedef int lzma_allocator ;


 scalar_t__ LZMA_BUF_ERROR ;
 int LZMA_FINISH ;
 TYPE_1__ LZMA_NEXT_CODER_INIT ;
 scalar_t__ LZMA_OK ;
 scalar_t__ LZMA_PROG_ERROR ;
 scalar_t__ LZMA_STREAM_END ;
 scalar_t__ lzma_block_header_encode (TYPE_2__*,int *) ;
 int lzma_block_header_size (TYPE_2__*) ;
 int lzma_next_end (TYPE_1__*,int const*) ;
 scalar_t__ lzma_raw_encoder_init (TYPE_1__*,int const*,int ) ;
 int return_if_error (int ) ;
 scalar_t__ stub1 (int ,int const*,int const*,size_t*,size_t,int *,size_t*,size_t,int ) ;

__attribute__((used)) static lzma_ret
block_encode_normal(lzma_block *block, const lzma_allocator *allocator,
  const uint8_t *in, size_t in_size,
  uint8_t *out, size_t *out_pos, size_t out_size)
{

 return_if_error(lzma_block_header_size(block));


 if (out_size - *out_pos <= block->header_size)
  return LZMA_BUF_ERROR;

 const size_t out_start = *out_pos;
 *out_pos += block->header_size;



 if (out_size - *out_pos > block->compressed_size)
  out_size = *out_pos + block->compressed_size;



 lzma_next_coder raw_encoder = LZMA_NEXT_CODER_INIT;
 lzma_ret ret = lzma_raw_encoder_init(
   &raw_encoder, allocator, block->filters);

 if (ret == LZMA_OK) {
  size_t in_pos = 0;
  ret = raw_encoder.code(raw_encoder.coder, allocator,
    in, &in_pos, in_size, out, out_pos, out_size,
    LZMA_FINISH);
 }


 lzma_next_end(&raw_encoder, allocator);

 if (ret == LZMA_STREAM_END) {

  block->compressed_size
    = *out_pos - (out_start + block->header_size);
  ret = lzma_block_header_encode(block, out + out_start);
  if (ret != LZMA_OK)
   ret = LZMA_PROG_ERROR;

 } else if (ret == LZMA_OK) {

  ret = LZMA_BUF_ERROR;
 }


 if (ret != LZMA_OK)
  *out_pos = out_start;

 return ret;
}
