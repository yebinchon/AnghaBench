
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int index; } ;
typedef TYPE_1__ lzma_index_coder ;
typedef int lzma_allocator ;


 int lzma_free (TYPE_1__*,int const*) ;
 int lzma_index_end (int ,int const*) ;

__attribute__((used)) static void
index_decoder_end(void *coder_ptr, const lzma_allocator *allocator)
{
 lzma_index_coder *coder = coder_ptr;
 lzma_index_end(coder->index, allocator);
 lzma_free(coder, allocator);
 return;
}
