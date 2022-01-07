
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {TYPE_3__* coder; int (* end ) (TYPE_3__*,int const*) ;} ;
struct TYPE_7__ {TYPE_3__* buffer; TYPE_3__* hash; TYPE_3__* son; } ;
struct TYPE_8__ {TYPE_1__ lz; TYPE_2__ mf; int next; } ;
typedef TYPE_3__ lzma_coder ;
typedef int lzma_allocator ;


 int lzma_free (TYPE_3__*,int const*) ;
 int lzma_next_end (int *,int const*) ;
 int stub1 (TYPE_3__*,int const*) ;

__attribute__((used)) static void
lz_encoder_end(void *coder_ptr, const lzma_allocator *allocator)
{
 lzma_coder *coder = coder_ptr;

 lzma_next_end(&coder->next, allocator);

 lzma_free(coder->mf.son, allocator);
 lzma_free(coder->mf.hash, allocator);
 lzma_free(coder->mf.buffer, allocator);

 if (coder->lz.end != ((void*)0))
  coder->lz.end(coder->lz.coder, allocator);
 else
  lzma_free(coder->lz.coder, allocator);

 lzma_free(coder, allocator);
 return;
}
