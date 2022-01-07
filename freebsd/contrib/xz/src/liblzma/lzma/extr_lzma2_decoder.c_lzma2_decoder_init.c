
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int lzma_ret ;
struct TYPE_7__ {scalar_t__ preset_dict_size; int * preset_dict; } ;
typedef TYPE_1__ lzma_options_lzma ;
struct TYPE_8__ {int need_properties; int need_dictionary_reset; int lzma; int sequence; } ;
typedef TYPE_2__ lzma_lzma2_coder ;
typedef int lzma_lz_options ;
struct TYPE_9__ {int * end; int * code; TYPE_2__* coder; } ;
typedef TYPE_3__ lzma_lz_decoder ;
typedef int lzma_allocator ;


 int LZMA_LZ_DECODER_INIT ;
 int LZMA_MEM_ERROR ;
 int SEQ_CONTROL ;
 int lzma2_decode ;
 int lzma2_decoder_end ;
 TYPE_2__* lzma_alloc (int,int const*) ;
 int lzma_lzma_decoder_create (int *,int const*,TYPE_1__ const*,int *) ;

__attribute__((used)) static lzma_ret
lzma2_decoder_init(lzma_lz_decoder *lz, const lzma_allocator *allocator,
  const void *opt, lzma_lz_options *lz_options)
{
 lzma_lzma2_coder *coder = lz->coder;
 if (coder == ((void*)0)) {
  coder = lzma_alloc(sizeof(lzma_lzma2_coder), allocator);
  if (coder == ((void*)0))
   return LZMA_MEM_ERROR;

  lz->coder = coder;
  lz->code = &lzma2_decode;
  lz->end = &lzma2_decoder_end;

  coder->lzma = LZMA_LZ_DECODER_INIT;
 }

 const lzma_options_lzma *options = opt;

 coder->sequence = SEQ_CONTROL;
 coder->need_properties = 1;
 coder->need_dictionary_reset = options->preset_dict == ((void*)0)
   || options->preset_dict_size == 0;

 return lzma_lzma_decoder_create(&coder->lzma,
   allocator, options, lz_options);
}
