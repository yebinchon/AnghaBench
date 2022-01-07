
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* filters; int index; int index_encoder; int block_encoder; } ;
typedef TYPE_2__ lzma_stream_coder ;
typedef int lzma_allocator ;
struct TYPE_4__ {scalar_t__ id; TYPE_2__* options; } ;


 scalar_t__ LZMA_VLI_UNKNOWN ;
 int lzma_free (TYPE_2__*,int const*) ;
 int lzma_index_end (int ,int const*) ;
 int lzma_next_end (int *,int const*) ;

__attribute__((used)) static void
stream_encoder_end(void *coder_ptr, const lzma_allocator *allocator)
{
 lzma_stream_coder *coder = coder_ptr;

 lzma_next_end(&coder->block_encoder, allocator);
 lzma_next_end(&coder->index_encoder, allocator);
 lzma_index_end(coder->index, allocator);

 for (size_t i = 0; coder->filters[i].id != LZMA_VLI_UNKNOWN; ++i)
  lzma_free(coder->filters[i].options, allocator);

 lzma_free(coder, allocator);
 return;
}
