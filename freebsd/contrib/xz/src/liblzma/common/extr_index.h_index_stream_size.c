
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ lzma_vli ;


 scalar_t__ LZMA_STREAM_HEADER_SIZE ;
 scalar_t__ index_size (scalar_t__,scalar_t__) ;

__attribute__((used)) static inline lzma_vli
index_stream_size(lzma_vli blocks_size,
  lzma_vli count, lzma_vli index_list_size)
{
 return LZMA_STREAM_HEADER_SIZE + blocks_size
   + index_size(count, index_list_size)
   + LZMA_STREAM_HEADER_SIZE;
}
