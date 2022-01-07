
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int ZSTD_Sequence ;
struct TYPE_6__ {int collectSequences; size_t seqIndex; size_t maxSequences; int * seqStart; } ;
struct TYPE_5__ {TYPE_2__ seqCollector; } ;
typedef TYPE_1__ ZSTD_CCtx ;
typedef TYPE_2__ SeqCollector ;


 int RETURN_ERROR_IF (int ,int ) ;
 int ZSTD_compress2 (TYPE_1__*,void*,size_t const,void const*,size_t) ;
 size_t ZSTD_compressBound (size_t) ;
 int ZSTD_defaultCMem ;
 int ZSTD_free (void*,int ) ;
 void* ZSTD_malloc (size_t const,int ) ;
 int memory_allocation ;

size_t ZSTD_getSequences(ZSTD_CCtx* zc, ZSTD_Sequence* outSeqs,
    size_t outSeqsSize, const void* src, size_t srcSize)
{
    const size_t dstCapacity = ZSTD_compressBound(srcSize);
    void* dst = ZSTD_malloc(dstCapacity, ZSTD_defaultCMem);
    SeqCollector seqCollector;

    RETURN_ERROR_IF(dst == ((void*)0), memory_allocation);

    seqCollector.collectSequences = 1;
    seqCollector.seqStart = outSeqs;
    seqCollector.seqIndex = 0;
    seqCollector.maxSequences = outSeqsSize;
    zc->seqCollector = seqCollector;

    ZSTD_compress2(zc, dst, dstCapacity, src, srcSize);
    ZSTD_free(dst, ZSTD_defaultCMem);
    return zc->seqCollector.seqIndex;
}
