
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ lzma_ret ;
struct TYPE_10__ {int u8; } ;
struct TYPE_11__ {TYPE_1__ buffer; } ;
typedef TYPE_2__ lzma_check_state ;
struct TYPE_12__ {int version; size_t uncompressed_size; scalar_t__ compressed_size; int* raw_check; scalar_t__ check; int * filters; } ;
typedef TYPE_3__ lzma_block ;
typedef int lzma_allocator ;


 scalar_t__ LZMA_BUF_ERROR ;
 unsigned int LZMA_CHECK_ID_MAX ;
 scalar_t__ LZMA_DATA_ERROR ;
 scalar_t__ LZMA_OK ;
 scalar_t__ LZMA_OPTIONS_ERROR ;
 scalar_t__ LZMA_PROG_ERROR ;
 scalar_t__ LZMA_UNSUPPORTED_CHECK ;
 size_t const UINT32_MAX ;
 int assert (int) ;
 scalar_t__ block_encode_normal (TYPE_3__*,int const*,int const*,size_t,int*,size_t*,size_t) ;
 int block_encode_uncompressed (TYPE_3__*,int const*,size_t,int*,size_t*,size_t) ;
 scalar_t__ lzma2_bound (size_t) ;
 int lzma_check_finish (TYPE_2__*,scalar_t__) ;
 int lzma_check_init (TYPE_2__*,scalar_t__) ;
 int lzma_check_is_supported (scalar_t__) ;
 size_t lzma_check_size (scalar_t__) ;
 int lzma_check_update (TYPE_2__*,scalar_t__,int const*,size_t) ;
 int memcpy (int*,int ,size_t const) ;
 int return_if_error (int ) ;

__attribute__((used)) static lzma_ret
block_buffer_encode(lzma_block *block, const lzma_allocator *allocator,
  const uint8_t *in, size_t in_size,
  uint8_t *out, size_t *out_pos, size_t out_size,
  bool try_to_compress)
{

 if (block == ((void*)0) || (in == ((void*)0) && in_size != 0) || out == ((void*)0)
   || out_pos == ((void*)0) || *out_pos > out_size)
  return LZMA_PROG_ERROR;



 if (block->version > 1)
  return LZMA_OPTIONS_ERROR;

 if ((unsigned int)(block->check) > LZMA_CHECK_ID_MAX
   || (try_to_compress && block->filters == ((void*)0)))
  return LZMA_PROG_ERROR;

 if (!lzma_check_is_supported(block->check))
  return LZMA_UNSUPPORTED_CHECK;




 out_size -= (out_size - *out_pos) & 3;


 const size_t check_size = lzma_check_size(block->check);
 assert(check_size != UINT32_MAX);


 if (out_size - *out_pos <= check_size)
  return LZMA_BUF_ERROR;

 out_size -= check_size;



 block->uncompressed_size = in_size;
 block->compressed_size = lzma2_bound(in_size);
 if (block->compressed_size == 0)
  return LZMA_DATA_ERROR;


 lzma_ret ret = LZMA_BUF_ERROR;
 if (try_to_compress)
  ret = block_encode_normal(block, allocator,
    in, in_size, out, out_pos, out_size);

 if (ret != LZMA_OK) {


  if (ret != LZMA_BUF_ERROR)
   return ret;






  return_if_error(block_encode_uncompressed(block, in, in_size,
    out, out_pos, out_size));
 }

 assert(*out_pos <= out_size);




 for (size_t i = (size_t)(block->compressed_size); i & 3; ++i) {
  assert(*out_pos < out_size);
  out[(*out_pos)++] = 0x00;
 }


 if (check_size > 0) {



  lzma_check_state check;
  lzma_check_init(&check, block->check);
  lzma_check_update(&check, block->check, in, in_size);
  lzma_check_finish(&check, block->check);

  memcpy(block->raw_check, check.buffer.u8, check_size);
  memcpy(out + *out_pos, check.buffer.u8, check_size);
  *out_pos += check_size;
 }

 return LZMA_OK;
}
