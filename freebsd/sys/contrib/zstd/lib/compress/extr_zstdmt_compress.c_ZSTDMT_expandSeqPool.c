
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ZSTDMT_seqPool ;
typedef int U32 ;


 int * ZSTDMT_expandBufferPool (int *,int ) ;

__attribute__((used)) static ZSTDMT_seqPool* ZSTDMT_expandSeqPool(ZSTDMT_seqPool* pool, U32 nbWorkers)
{
    return ZSTDMT_expandBufferPool(pool, nbWorkers);
}
