
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int lzma_ret ;
struct TYPE_10__ {int * update; int * end; int * code; TYPE_2__* coder; } ;
typedef TYPE_1__ lzma_next_coder ;
struct TYPE_11__ {int next; int check; scalar_t__ pos; scalar_t__ uncompressed_size; scalar_t__ compressed_size; TYPE_3__* block; int sequence; } ;
typedef TYPE_2__ lzma_block_coder ;
struct TYPE_12__ {int version; int filters; scalar_t__ check; } ;
typedef TYPE_3__ lzma_block ;
typedef int lzma_allocator ;


 unsigned int LZMA_CHECK_ID_MAX ;
 int LZMA_MEM_ERROR ;
 int LZMA_NEXT_CODER_INIT ;
 int LZMA_OPTIONS_ERROR ;
 int LZMA_PROG_ERROR ;
 int LZMA_UNSUPPORTED_CHECK ;
 int SEQ_CODE ;
 int block_encode ;
 int block_encoder_end ;
 int block_encoder_update ;
 TYPE_2__* lzma_alloc (int,int const*) ;
 int lzma_check_init (int *,scalar_t__) ;
 int lzma_check_is_supported (scalar_t__) ;
 int lzma_next_coder_init (int (*) (TYPE_1__*,int const*,TYPE_3__*),TYPE_1__*,int const*) ;
 int lzma_raw_encoder_init (int *,int const*,int ) ;

extern lzma_ret
lzma_block_encoder_init(lzma_next_coder *next, const lzma_allocator *allocator,
  lzma_block *block)
{
 lzma_next_coder_init(&lzma_block_encoder_init, next, allocator);

 if (block == ((void*)0))
  return LZMA_PROG_ERROR;



 if (block->version > 1)
  return LZMA_OPTIONS_ERROR;



 if ((unsigned int)(block->check) > LZMA_CHECK_ID_MAX)
  return LZMA_PROG_ERROR;

 if (!lzma_check_is_supported(block->check))
  return LZMA_UNSUPPORTED_CHECK;


 lzma_block_coder *coder = next->coder;
 if (coder == ((void*)0)) {
  coder = lzma_alloc(sizeof(lzma_block_coder), allocator);
  if (coder == ((void*)0))
   return LZMA_MEM_ERROR;

  next->coder = coder;
  next->code = &block_encode;
  next->end = &block_encoder_end;
  next->update = &block_encoder_update;
  coder->next = LZMA_NEXT_CODER_INIT;
 }


 coder->sequence = SEQ_CODE;
 coder->block = block;
 coder->compressed_size = 0;
 coder->uncompressed_size = 0;
 coder->pos = 0;


 lzma_check_init(&coder->check, block->check);


 return lzma_raw_encoder_init(&coder->next, allocator, block->filters);
}
