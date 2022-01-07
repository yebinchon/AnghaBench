
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int mutex; int cond; int index; int index_encoder; TYPE_1__* filters; int outq; } ;
typedef TYPE_2__ lzma_stream_coder ;
typedef int lzma_allocator ;
struct TYPE_5__ {scalar_t__ id; TYPE_2__* options; } ;


 scalar_t__ LZMA_VLI_UNKNOWN ;
 int lzma_free (TYPE_2__*,int const*) ;
 int lzma_index_end (int ,int const*) ;
 int lzma_next_end (int *,int const*) ;
 int lzma_outq_end (int *,int const*) ;
 int mythread_cond_destroy (int *) ;
 int mythread_mutex_destroy (int *) ;
 int threads_end (TYPE_2__*,int const*) ;

__attribute__((used)) static void
stream_encoder_mt_end(void *coder_ptr, const lzma_allocator *allocator)
{
 lzma_stream_coder *coder = coder_ptr;


 threads_end(coder, allocator);
 lzma_outq_end(&coder->outq, allocator);

 for (size_t i = 0; coder->filters[i].id != LZMA_VLI_UNKNOWN; ++i)
  lzma_free(coder->filters[i].options, allocator);

 lzma_next_end(&coder->index_encoder, allocator);
 lzma_index_end(coder->index, allocator);

 mythread_cond_destroy(&coder->cond);
 mythread_mutex_destroy(&coder->mutex);

 lzma_free(coder, allocator);
 return;
}
