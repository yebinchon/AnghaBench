
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int lzma_ret ;
struct TYPE_5__ {int * coder; int * end; int * code; } ;
typedef TYPE_1__ lzma_next_coder ;
typedef int lzma_index_coder ;
typedef int lzma_index ;
typedef int lzma_allocator ;


 int LZMA_MEM_ERROR ;
 int LZMA_OK ;
 int LZMA_PROG_ERROR ;
 int index_encode ;
 int index_encoder_end ;
 int index_encoder_reset (int *,int const*) ;
 int * lzma_alloc (int,int const*) ;
 int lzma_next_coder_init (int (*) (TYPE_1__*,int const*,int const*),TYPE_1__*,int const*) ;

extern lzma_ret
lzma_index_encoder_init(lzma_next_coder *next, const lzma_allocator *allocator,
  const lzma_index *i)
{
 lzma_next_coder_init(&lzma_index_encoder_init, next, allocator);

 if (i == ((void*)0))
  return LZMA_PROG_ERROR;

 if (next->coder == ((void*)0)) {
  next->coder = lzma_alloc(sizeof(lzma_index_coder), allocator);
  if (next->coder == ((void*)0))
   return LZMA_MEM_ERROR;

  next->code = &index_encode;
  next->end = &index_encoder_end;
 }

 index_encoder_reset(next->coder, i);

 return LZMA_OK;
}
