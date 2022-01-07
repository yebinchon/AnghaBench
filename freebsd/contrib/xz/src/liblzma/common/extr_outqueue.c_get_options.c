
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;
typedef int lzma_ret ;


 int BUF_SIZE_MAX ;
 int LZMA_OK ;
 int LZMA_OPTIONS_ERROR ;
 int LZMA_THREADS_MAX ;

__attribute__((used)) static lzma_ret
get_options(uint64_t *bufs_alloc_size, uint32_t *bufs_count,
  uint64_t buf_size_max, uint32_t threads)
{
 if (threads > LZMA_THREADS_MAX || buf_size_max > BUF_SIZE_MAX)
  return LZMA_OPTIONS_ERROR;






 *bufs_count = threads * 2;
 *bufs_alloc_size = *bufs_count * buf_size_max;

 return LZMA_OK;
}
