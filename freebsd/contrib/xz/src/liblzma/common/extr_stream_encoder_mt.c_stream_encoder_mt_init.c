
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_8__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;
typedef struct TYPE_15__ TYPE_13__ ;


typedef int worker_thread ;
typedef scalar_t__ uint64_t ;
struct TYPE_19__ {scalar_t__ check; scalar_t__ version; } ;
struct TYPE_16__ {int threads_max; size_t block_size; int progress_out; scalar_t__ progress_in; scalar_t__ header_pos; int header; TYPE_8__ stream_flags; int * index; TYPE_13__* filters; int timeout; int outq; int * threads; int * threads_free; scalar_t__ threads_initialized; int * thr; int thread_error; int sequence; int index_encoder; int mutex; int cond; } ;
typedef TYPE_1__ lzma_stream_coder ;
typedef int lzma_ret ;
typedef int lzma_options_easy ;
struct TYPE_17__ {int * get_progress; int * end; int * code; TYPE_1__* coder; } ;
typedef TYPE_2__ lzma_next_coder ;
struct TYPE_18__ {int threads; scalar_t__ check; int timeout; } ;
typedef TYPE_3__ lzma_mt ;
typedef int lzma_filter ;
typedef int lzma_allocator ;
struct TYPE_15__ {scalar_t__ id; TYPE_1__* options; } ;


 unsigned int LZMA_CHECK_ID_MAX ;
 int LZMA_MEM_ERROR ;
 int LZMA_NEXT_CODER_INIT ;
 int LZMA_OK ;
 int LZMA_OPTIONS_ERROR ;
 int LZMA_PROG_ERROR ;
 int LZMA_STREAM_HEADER_SIZE ;
 int LZMA_UNSUPPORTED_CHECK ;
 scalar_t__ LZMA_VLI_UNKNOWN ;
 int SEQ_STREAM_HEADER ;
 scalar_t__ SIZE_MAX ;
 scalar_t__ UINT64_MAX ;
 int assert (int) ;
 int get_options (TYPE_3__ const*,int *,int const**,scalar_t__*,scalar_t__*) ;
 int get_progress ;
 void* lzma_alloc (int,int const*) ;
 int lzma_check_is_supported (scalar_t__) ;
 int lzma_filters_copy (int const*,TYPE_13__*,int const*) ;
 int lzma_free (TYPE_1__*,int const*) ;
 int lzma_index_end (int *,int const*) ;
 int * lzma_index_init (int const*) ;
 int lzma_next_coder_init (int (*) (TYPE_2__*,int const*,TYPE_3__ const*),TYPE_2__*,int const*) ;
 int lzma_outq_init (int *,int const*,scalar_t__,int) ;
 scalar_t__ lzma_raw_encoder_memusage (int const*) ;
 int lzma_stream_header_encode (TYPE_8__*,int ) ;
 int memzero (int *,int) ;
 scalar_t__ mythread_cond_init (int *) ;
 int mythread_mutex_destroy (int *) ;
 scalar_t__ mythread_mutex_init (int *) ;
 int return_if_error (int ) ;
 int stream_encode_mt ;
 int stream_encoder_mt_end ;
 int threads_end (TYPE_1__*,int const*) ;
 int threads_stop (TYPE_1__*,int) ;

__attribute__((used)) static lzma_ret
stream_encoder_mt_init(lzma_next_coder *next, const lzma_allocator *allocator,
  const lzma_mt *options)
{
 lzma_next_coder_init(&stream_encoder_mt_init, next, allocator);


 lzma_options_easy easy;
 const lzma_filter *filters;
 uint64_t block_size;
 uint64_t outbuf_size_max;
 return_if_error(get_options(options, &easy, &filters,
   &block_size, &outbuf_size_max));
 if (lzma_raw_encoder_memusage(filters) == UINT64_MAX)
  return LZMA_OPTIONS_ERROR;


 if ((unsigned int)(options->check) > LZMA_CHECK_ID_MAX)
  return LZMA_PROG_ERROR;

 if (!lzma_check_is_supported(options->check))
  return LZMA_UNSUPPORTED_CHECK;


 lzma_stream_coder *coder = next->coder;
 if (coder == ((void*)0)) {
  coder = lzma_alloc(sizeof(lzma_stream_coder), allocator);
  if (coder == ((void*)0))
   return LZMA_MEM_ERROR;

  next->coder = coder;





  if (mythread_mutex_init(&coder->mutex)) {
   lzma_free(coder, allocator);
   next->coder = ((void*)0);
   return LZMA_MEM_ERROR;
  }

  if (mythread_cond_init(&coder->cond)) {
   mythread_mutex_destroy(&coder->mutex);
   lzma_free(coder, allocator);
   next->coder = ((void*)0);
   return LZMA_MEM_ERROR;
  }

  next->code = &stream_encode_mt;
  next->end = &stream_encoder_mt_end;
  next->get_progress = &get_progress;


  coder->filters[0].id = LZMA_VLI_UNKNOWN;
  coder->index_encoder = LZMA_NEXT_CODER_INIT;
  coder->index = ((void*)0);
  memzero(&coder->outq, sizeof(coder->outq));
  coder->threads = ((void*)0);
  coder->threads_max = 0;
  coder->threads_initialized = 0;
 }


 coder->sequence = SEQ_STREAM_HEADER;
 coder->block_size = (size_t)(block_size);
 coder->thread_error = LZMA_OK;
 coder->thr = ((void*)0);


 assert(options->threads > 0);
 if (coder->threads_max != options->threads) {
  threads_end(coder, allocator);

  coder->threads = ((void*)0);
  coder->threads_max = 0;

  coder->threads_initialized = 0;
  coder->threads_free = ((void*)0);

  coder->threads = lzma_alloc(
    options->threads * sizeof(worker_thread),
    allocator);
  if (coder->threads == ((void*)0))
   return LZMA_MEM_ERROR;

  coder->threads_max = options->threads;
 } else {


  threads_stop(coder, 1);
 }


 return_if_error(lzma_outq_init(&coder->outq, allocator,
   outbuf_size_max, options->threads));


 coder->timeout = options->timeout;


 for (size_t i = 0; coder->filters[i].id != LZMA_VLI_UNKNOWN; ++i)
  lzma_free(coder->filters[i].options, allocator);

 return_if_error(lzma_filters_copy(
   filters, coder->filters, allocator));


 lzma_index_end(coder->index, allocator);
 coder->index = lzma_index_init(allocator);
 if (coder->index == ((void*)0))
  return LZMA_MEM_ERROR;


 coder->stream_flags.version = 0;
 coder->stream_flags.check = options->check;
 return_if_error(lzma_stream_header_encode(
   &coder->stream_flags, coder->header));

 coder->header_pos = 0;


 coder->progress_in = 0;
 coder->progress_out = LZMA_STREAM_HEADER_SIZE;

 return LZMA_OK;
}
