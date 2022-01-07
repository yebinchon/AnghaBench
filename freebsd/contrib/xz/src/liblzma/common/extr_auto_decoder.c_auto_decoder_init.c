
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint64_t ;
typedef int uint32_t ;
typedef int lzma_ret ;
struct TYPE_7__ {int * memconfig; int * get_check; int * end; int * code; TYPE_2__* coder; } ;
typedef TYPE_1__ lzma_next_coder ;
struct TYPE_8__ {int flags; int sequence; int memlimit; int next; } ;
typedef TYPE_2__ lzma_auto_coder ;
typedef int lzma_allocator ;


 int LZMA_MEM_ERROR ;
 int LZMA_NEXT_CODER_INIT ;
 int LZMA_OK ;
 int LZMA_OPTIONS_ERROR ;
 int LZMA_SUPPORTED_FLAGS ;
 int SEQ_INIT ;
 int auto_decode ;
 int auto_decoder_end ;
 int auto_decoder_get_check ;
 int auto_decoder_memconfig ;
 TYPE_2__* lzma_alloc (int,int const*) ;
 int lzma_next_coder_init (int (*) (TYPE_1__*,int const*,int ,int),TYPE_1__*,int const*) ;
 int my_max (int,int ) ;

__attribute__((used)) static lzma_ret
auto_decoder_init(lzma_next_coder *next, const lzma_allocator *allocator,
  uint64_t memlimit, uint32_t flags)
{
 lzma_next_coder_init(&auto_decoder_init, next, allocator);

 if (flags & ~LZMA_SUPPORTED_FLAGS)
  return LZMA_OPTIONS_ERROR;

 lzma_auto_coder *coder = next->coder;
 if (coder == ((void*)0)) {
  coder = lzma_alloc(sizeof(lzma_auto_coder), allocator);
  if (coder == ((void*)0))
   return LZMA_MEM_ERROR;

  next->coder = coder;
  next->code = &auto_decode;
  next->end = &auto_decoder_end;
  next->get_check = &auto_decoder_get_check;
  next->memconfig = &auto_decoder_memconfig;
  coder->next = LZMA_NEXT_CODER_INIT;
 }

 coder->memlimit = my_max(1, memlimit);
 coder->flags = flags;
 coder->sequence = SEQ_INIT;

 return LZMA_OK;
}
