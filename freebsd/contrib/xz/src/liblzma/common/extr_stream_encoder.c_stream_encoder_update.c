
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_13__ {int coder; int (* update ) (int ,int const*,TYPE_4__ const*,TYPE_4__ const*) ;} ;
struct TYPE_12__ {TYPE_4__* filters; } ;
struct TYPE_14__ {scalar_t__ sequence; int block_encoder_is_initialized; TYPE_4__* filters; TYPE_2__ block_encoder; TYPE_1__ block_options; } ;
typedef TYPE_3__ lzma_stream_coder ;
typedef scalar_t__ lzma_ret ;
struct TYPE_15__ {scalar_t__ id; int options; } ;
typedef TYPE_4__ lzma_filter ;
typedef int lzma_allocator ;


 scalar_t__ const LZMA_OK ;
 scalar_t__ LZMA_PROG_ERROR ;
 scalar_t__ LZMA_VLI_UNKNOWN ;
 scalar_t__ SEQ_BLOCK_ENCODE ;
 scalar_t__ SEQ_BLOCK_INIT ;
 scalar_t__ block_encoder_init (TYPE_3__*,int const*) ;
 scalar_t__ lzma_filters_copy (TYPE_4__ const*,TYPE_4__*,int const*) ;
 int lzma_free (int ,int const*) ;
 int return_if_error (int ) ;
 int stub1 (int ,int const*,TYPE_4__ const*,TYPE_4__ const*) ;

__attribute__((used)) static lzma_ret
stream_encoder_update(void *coder_ptr, const lzma_allocator *allocator,
  const lzma_filter *filters,
  const lzma_filter *reversed_filters)
{
 lzma_stream_coder *coder = coder_ptr;

 if (coder->sequence <= SEQ_BLOCK_INIT) {




  coder->block_encoder_is_initialized = 0;
  coder->block_options.filters = (lzma_filter *)(filters);
  const lzma_ret ret = block_encoder_init(coder, allocator);
  coder->block_options.filters = coder->filters;
  if (ret != LZMA_OK)
   return ret;

  coder->block_encoder_is_initialized = 1;

 } else if (coder->sequence <= SEQ_BLOCK_ENCODE) {


  return_if_error(coder->block_encoder.update(
    coder->block_encoder.coder, allocator,
    filters, reversed_filters));
 } else {


  return LZMA_PROG_ERROR;
 }


 for (size_t i = 0; coder->filters[i].id != LZMA_VLI_UNKNOWN; ++i)
  lzma_free(coder->filters[i].options, allocator);

 return lzma_filters_copy(filters, coder->filters, allocator);
}
