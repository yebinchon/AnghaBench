
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct TYPE_3__* lzma; } ;
typedef TYPE_1__ lzma_lzma2_coder ;
typedef int lzma_allocator ;


 int lzma_free (TYPE_1__*,int const*) ;

__attribute__((used)) static void
lzma2_encoder_end(void *coder_ptr, const lzma_allocator *allocator)
{
 lzma_lzma2_coder *coder = coder_ptr;
 lzma_free(coder->lzma, allocator);
 lzma_free(coder, allocator);
 return;
}
