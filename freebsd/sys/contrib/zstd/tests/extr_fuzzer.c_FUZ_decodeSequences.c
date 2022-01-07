
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int litLength; size_t matchLength; size_t offset; } ;
typedef TYPE_1__ ZSTD_Sequence ;
typedef int BYTE ;


 int assert (int) ;
 int memcpy (int *,int *,size_t) ;

__attribute__((used)) static void FUZ_decodeSequences(BYTE* dst, ZSTD_Sequence* seqs, size_t seqsSize, BYTE* src, size_t size)
{
    size_t i;
    size_t j;
    for(i = 0; i < seqsSize - 1; ++i) {
        assert(dst + seqs[i].litLength + seqs[i].matchLength < dst + size);
        assert(src + seqs[i].litLength + seqs[i].matchLength < src + size);

        memcpy(dst, src, seqs[i].litLength);
        dst += seqs[i].litLength;
        src += seqs[i].litLength;
        size -= seqs[i].litLength;

        for (j = 0; j < seqs[i].matchLength; ++j)
            dst[j] = dst[j - seqs[i].offset];
        dst += seqs[i].matchLength;
        src += seqs[i].matchLength;
        size -= seqs[i].matchLength;
    }
    memcpy(dst, src, size);
}
