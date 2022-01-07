
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint64_t ;
typedef int lzma_ret ;
struct TYPE_8__ {int * memconfig; int * end; int * code; TYPE_2__* coder; } ;
typedef TYPE_1__ lzma_next_coder ;
struct TYPE_9__ {int * index; } ;
typedef TYPE_2__ lzma_index_coder ;
typedef int lzma_index ;
typedef int lzma_allocator ;


 int LZMA_MEM_ERROR ;
 int LZMA_PROG_ERROR ;
 int index_decode ;
 int index_decoder_end ;
 int index_decoder_memconfig ;
 int index_decoder_reset (TYPE_2__*,int const*,int **,int ) ;
 TYPE_2__* lzma_alloc (int,int const*) ;
 int lzma_index_end (int *,int const*) ;
 int lzma_next_coder_init (int (*) (TYPE_1__*,int const*,int **,int ),TYPE_1__*,int const*) ;

__attribute__((used)) static lzma_ret
index_decoder_init(lzma_next_coder *next, const lzma_allocator *allocator,
  lzma_index **i, uint64_t memlimit)
{
 lzma_next_coder_init(&index_decoder_init, next, allocator);

 if (i == ((void*)0))
  return LZMA_PROG_ERROR;

 lzma_index_coder *coder = next->coder;
 if (coder == ((void*)0)) {
  coder = lzma_alloc(sizeof(lzma_index_coder), allocator);
  if (coder == ((void*)0))
   return LZMA_MEM_ERROR;

  next->coder = coder;
  next->code = &index_decode;
  next->end = &index_decoder_end;
  next->memconfig = &index_decoder_memconfig;
  coder->index = ((void*)0);
 } else {
  lzma_index_end(coder->index, allocator);
 }

 return index_decoder_reset(coder, allocator, i, memlimit);
}
