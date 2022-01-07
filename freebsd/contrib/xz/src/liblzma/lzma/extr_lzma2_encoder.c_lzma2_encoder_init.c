
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int lzma_ret ;
struct TYPE_10__ {scalar_t__ preset_dict_size; int * preset_dict; } ;
typedef TYPE_1__ lzma_options_lzma ;
struct TYPE_11__ {int need_properties; int need_state_reset; int need_dictionary_reset; TYPE_1__ opt_cur; int * lzma; int sequence; } ;
typedef TYPE_2__ lzma_lzma2_coder ;
struct TYPE_12__ {scalar_t__ before_size; scalar_t__ dict_size; } ;
typedef TYPE_3__ lzma_lz_options ;
struct TYPE_13__ {int * options_update; int * end; int * code; TYPE_2__* coder; } ;
typedef TYPE_4__ lzma_lz_encoder ;
typedef int lzma_allocator ;


 scalar_t__ LZMA2_CHUNK_MAX ;
 int LZMA_MEM_ERROR ;
 int LZMA_OK ;
 int LZMA_PROG_ERROR ;
 int SEQ_INIT ;
 int lzma2_encode ;
 int lzma2_encoder_end ;
 int lzma2_encoder_options_update ;
 TYPE_2__* lzma_alloc (int,int const*) ;
 int lzma_lzma_encoder_create (int **,int const*,TYPE_1__*,TYPE_3__*) ;
 int return_if_error (int ) ;

__attribute__((used)) static lzma_ret
lzma2_encoder_init(lzma_lz_encoder *lz, const lzma_allocator *allocator,
  const void *options, lzma_lz_options *lz_options)
{
 if (options == ((void*)0))
  return LZMA_PROG_ERROR;

 lzma_lzma2_coder *coder = lz->coder;
 if (coder == ((void*)0)) {
  coder = lzma_alloc(sizeof(lzma_lzma2_coder), allocator);
  if (coder == ((void*)0))
   return LZMA_MEM_ERROR;

  lz->coder = coder;
  lz->code = &lzma2_encode;
  lz->end = &lzma2_encoder_end;
  lz->options_update = &lzma2_encoder_options_update;

  coder->lzma = ((void*)0);
 }

 coder->opt_cur = *(const lzma_options_lzma *)(options);

 coder->sequence = SEQ_INIT;
 coder->need_properties = 1;
 coder->need_state_reset = 0;
 coder->need_dictionary_reset
   = coder->opt_cur.preset_dict == ((void*)0)
   || coder->opt_cur.preset_dict_size == 0;


 return_if_error(lzma_lzma_encoder_create(&coder->lzma, allocator,
   &coder->opt_cur, lz_options));






 if (lz_options->before_size + lz_options->dict_size < LZMA2_CHUNK_MAX)
  lz_options->before_size
    = LZMA2_CHUNK_MAX - lz_options->dict_size;

 return LZMA_OK;
}
