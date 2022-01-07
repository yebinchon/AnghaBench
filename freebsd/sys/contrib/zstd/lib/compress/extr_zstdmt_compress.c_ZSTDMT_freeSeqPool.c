
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ZSTDMT_seqPool ;


 int ZSTDMT_freeBufferPool (int *) ;

__attribute__((used)) static void ZSTDMT_freeSeqPool(ZSTDMT_seqPool* seqPool)
{
    ZSTDMT_freeBufferPool(seqPool);
}
