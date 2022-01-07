
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int index_hash; int block_decoder; } ;
typedef TYPE_1__ lzma_stream_coder ;
typedef int lzma_allocator ;


 int lzma_free (TYPE_1__*,int const*) ;
 int lzma_index_hash_end (int ,int const*) ;
 int lzma_next_end (int *,int const*) ;

__attribute__((used)) static void
stream_decoder_end(void *coder_ptr, const lzma_allocator *allocator)
{
 lzma_stream_coder *coder = coder_ptr;
 lzma_next_end(&coder->block_decoder, allocator);
 lzma_index_hash_end(coder->index_hash, allocator);
 lzma_free(coder, allocator);
 return;
}
