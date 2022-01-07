
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
typedef int uint32_t ;
typedef int lzma_ret ;
struct TYPE_4__ {scalar_t__ buf_size_max; int bufs_allocated; scalar_t__ read_pos; scalar_t__ bufs_used; scalar_t__ bufs_pos; int * bufs_mem; int * bufs; } ;
typedef TYPE_1__ lzma_outq ;
typedef int lzma_outbuf ;
typedef int lzma_allocator ;


 int LZMA_MEM_ERROR ;
 int LZMA_OK ;
 scalar_t__ SIZE_MAX ;
 int get_options (scalar_t__*,int*,scalar_t__,int) ;
 void* lzma_alloc (size_t,int const*) ;
 int lzma_outq_end (TYPE_1__*,int const*) ;
 int return_if_error (int ) ;

extern lzma_ret
lzma_outq_init(lzma_outq *outq, const lzma_allocator *allocator,
  uint64_t buf_size_max, uint32_t threads)
{
 uint64_t bufs_alloc_size;
 uint32_t bufs_count;


 return_if_error(get_options(&bufs_alloc_size, &bufs_count,
   buf_size_max, threads));


 if (outq->buf_size_max != buf_size_max
   || outq->bufs_allocated != bufs_count) {
  lzma_outq_end(outq, allocator);






  outq->bufs = lzma_alloc(bufs_count * sizeof(lzma_outbuf),
    allocator);
  outq->bufs_mem = lzma_alloc((size_t)(bufs_alloc_size),
    allocator);

  if (outq->bufs == ((void*)0) || outq->bufs_mem == ((void*)0)) {
   lzma_outq_end(outq, allocator);
   return LZMA_MEM_ERROR;
  }
 }



 outq->buf_size_max = (size_t)(buf_size_max);
 outq->bufs_allocated = bufs_count;
 outq->bufs_pos = 0;
 outq->bufs_used = 0;
 outq->read_pos = 0;

 return LZMA_OK;
}
