
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int * in; int mutex; int cond; int thread_id; int block_encoder; scalar_t__ progress_out; scalar_t__ progress_in; TYPE_2__* coder; int const* allocator; int state; } ;
typedef TYPE_1__ worker_thread ;
struct TYPE_6__ {size_t threads_initialized; TYPE_1__* thr; int block_size; TYPE_1__* threads; } ;
typedef TYPE_2__ lzma_stream_coder ;
typedef int lzma_ret ;
typedef int lzma_allocator ;


 int LZMA_MEM_ERROR ;
 int LZMA_NEXT_CODER_INIT ;
 int LZMA_OK ;
 int THR_IDLE ;
 int * lzma_alloc (int ,int const*) ;
 int lzma_free (int *,int const*) ;
 int mythread_cond_destroy (int *) ;
 scalar_t__ mythread_cond_init (int *) ;
 scalar_t__ mythread_create (int *,int *,TYPE_1__*) ;
 int mythread_mutex_destroy (int *) ;
 scalar_t__ mythread_mutex_init (int *) ;
 int worker_start ;

__attribute__((used)) static lzma_ret
initialize_new_thread(lzma_stream_coder *coder,
  const lzma_allocator *allocator)
{
 worker_thread *thr = &coder->threads[coder->threads_initialized];

 thr->in = lzma_alloc(coder->block_size, allocator);
 if (thr->in == ((void*)0))
  return LZMA_MEM_ERROR;

 if (mythread_mutex_init(&thr->mutex))
  goto error_mutex;

 if (mythread_cond_init(&thr->cond))
  goto error_cond;

 thr->state = THR_IDLE;
 thr->allocator = allocator;
 thr->coder = coder;
 thr->progress_in = 0;
 thr->progress_out = 0;
 thr->block_encoder = LZMA_NEXT_CODER_INIT;

 if (mythread_create(&thr->thread_id, &worker_start, thr))
  goto error_thread;

 ++coder->threads_initialized;
 coder->thr = thr;

 return LZMA_OK;

error_thread:
 mythread_cond_destroy(&thr->cond);

error_cond:
 mythread_mutex_destroy(&thr->mutex);

error_mutex:
 lzma_free(thr->in, allocator);
 return LZMA_MEM_ERROR;
}
