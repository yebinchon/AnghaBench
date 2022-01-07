
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint64_t ;
typedef int uint32_t ;
struct TYPE_8__ {int tell_no_check; int tell_unsupported_check; int tell_any_check; int ignore_check; int concatenated; int first_stream; int memusage; int memlimit; int * index_hash; int block_decoder; } ;
typedef TYPE_1__ lzma_stream_coder ;
typedef int lzma_ret ;
struct TYPE_9__ {int * memconfig; int * get_check; int * end; int * code; TYPE_1__* coder; } ;
typedef TYPE_2__ lzma_next_coder ;
typedef int lzma_allocator ;


 int LZMA_CONCATENATED ;
 int LZMA_IGNORE_CHECK ;
 int LZMA_MEMUSAGE_BASE ;
 int LZMA_MEM_ERROR ;
 int LZMA_NEXT_CODER_INIT ;
 int LZMA_OPTIONS_ERROR ;
 int LZMA_SUPPORTED_FLAGS ;
 int LZMA_TELL_ANY_CHECK ;
 int LZMA_TELL_NO_CHECK ;
 int LZMA_TELL_UNSUPPORTED_CHECK ;
 TYPE_1__* lzma_alloc (int,int const*) ;
 int lzma_next_coder_init (int (*) (TYPE_2__*,int const*,int ,int),TYPE_2__*,int const*) ;
 int my_max (int,int ) ;
 int stream_decode ;
 int stream_decoder_end ;
 int stream_decoder_get_check ;
 int stream_decoder_memconfig ;
 int stream_decoder_reset (TYPE_1__*,int const*) ;

extern lzma_ret
lzma_stream_decoder_init(
  lzma_next_coder *next, const lzma_allocator *allocator,
  uint64_t memlimit, uint32_t flags)
{
 lzma_next_coder_init(&lzma_stream_decoder_init, next, allocator);

 if (flags & ~LZMA_SUPPORTED_FLAGS)
  return LZMA_OPTIONS_ERROR;

 lzma_stream_coder *coder = next->coder;
 if (coder == ((void*)0)) {
  coder = lzma_alloc(sizeof(lzma_stream_coder), allocator);
  if (coder == ((void*)0))
   return LZMA_MEM_ERROR;

  next->coder = coder;
  next->code = &stream_decode;
  next->end = &stream_decoder_end;
  next->get_check = &stream_decoder_get_check;
  next->memconfig = &stream_decoder_memconfig;

  coder->block_decoder = LZMA_NEXT_CODER_INIT;
  coder->index_hash = ((void*)0);
 }

 coder->memlimit = my_max(1, memlimit);
 coder->memusage = LZMA_MEMUSAGE_BASE;
 coder->tell_no_check = (flags & LZMA_TELL_NO_CHECK) != 0;
 coder->tell_unsupported_check
   = (flags & LZMA_TELL_UNSUPPORTED_CHECK) != 0;
 coder->tell_any_check = (flags & LZMA_TELL_ANY_CHECK) != 0;
 coder->ignore_check = (flags & LZMA_IGNORE_CHECK) != 0;
 coder->concatenated = (flags & LZMA_CONCATENATED) != 0;
 coder->first_stream = 1;

 return stream_decoder_reset(coder, allocator);
}
