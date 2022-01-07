
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint64_t ;
typedef int lzma_ret ;
struct TYPE_9__ {int * memconfig; int * end; int * code; TYPE_3__* coder; } ;
typedef TYPE_2__ lzma_next_coder ;
struct TYPE_8__ {scalar_t__ preset_dict_size; int * preset_dict; scalar_t__ dict_size; } ;
struct TYPE_10__ {int picky; int memusage; int memlimit; scalar_t__ uncompressed_size; TYPE_1__ options; scalar_t__ pos; int sequence; int next; } ;
typedef TYPE_3__ lzma_alone_coder ;
typedef int lzma_allocator ;


 int LZMA_MEMUSAGE_BASE ;
 int LZMA_MEM_ERROR ;
 int LZMA_NEXT_CODER_INIT ;
 int LZMA_OK ;
 int SEQ_PROPERTIES ;
 int alone_decode ;
 int alone_decoder_end ;
 int alone_decoder_memconfig ;
 TYPE_3__* lzma_alloc (int,int const*) ;
 int lzma_next_coder_init (int (*) (TYPE_2__*,int const*,int ,int),TYPE_2__*,int const*) ;
 int my_max (int,int ) ;

extern lzma_ret
lzma_alone_decoder_init(lzma_next_coder *next, const lzma_allocator *allocator,
  uint64_t memlimit, bool picky)
{
 lzma_next_coder_init(&lzma_alone_decoder_init, next, allocator);

 lzma_alone_coder *coder = next->coder;

 if (coder == ((void*)0)) {
  coder = lzma_alloc(sizeof(lzma_alone_coder), allocator);
  if (coder == ((void*)0))
   return LZMA_MEM_ERROR;

  next->coder = coder;
  next->code = &alone_decode;
  next->end = &alone_decoder_end;
  next->memconfig = &alone_decoder_memconfig;
  coder->next = LZMA_NEXT_CODER_INIT;
 }

 coder->sequence = SEQ_PROPERTIES;
 coder->picky = picky;
 coder->pos = 0;
 coder->options.dict_size = 0;
 coder->options.preset_dict = ((void*)0);
 coder->options.preset_dict_size = 0;
 coder->uncompressed_size = 0;
 coder->memlimit = my_max(1, memlimit);
 coder->memusage = LZMA_MEMUSAGE_BASE;

 return LZMA_OK;
}
