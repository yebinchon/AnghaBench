
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t MIN (size_t,int ) ;
 int ZSTD_BLOCKSIZE_MAX ;
 int ZSTD_CONTENTSIZE_UNKNOWN ;
 size_t ZSTD_decodingBufferSize_min (size_t,int ) ;
 size_t ZSTD_estimateDCtxSize () ;

size_t ZSTD_estimateDStreamSize(size_t windowSize)
{
    size_t const blockSize = MIN(windowSize, ZSTD_BLOCKSIZE_MAX);
    size_t const inBuffSize = blockSize;
    size_t const outBuffSize = ZSTD_decodingBufferSize_min(windowSize, ZSTD_CONTENTSIZE_UNKNOWN);
    return ZSTD_estimateDCtxSize() + inBuffSize + outBuffSize;
}
