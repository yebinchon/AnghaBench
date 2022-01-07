
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {size_t offset; size_t litLength; size_t matchLength; } ;
typedef TYPE_1__ seq_t ;
struct TYPE_6__ {size_t prevOffset; int const* dumps; int DStream; int stateML; int stateOffb; int stateLL; int const* dumpsEnd; } ;
typedef TYPE_2__ seqState_t ;
typedef int offset ;
typedef int U32 ;
typedef int const BYTE ;


 void* FSE_decodeSymbol (int *,int *) ;
 size_t FSE_readBits (int *,int) ;
 int FSE_reloadDStream (int *) ;
 scalar_t__ MINMATCH ;
 size_t MaxLL ;
 size_t MaxML ;
 scalar_t__ ZSTD_32bits () ;
 size_t ZSTD_readLE24 (int const*) ;

__attribute__((used)) static void ZSTD_decodeSequence(seq_t* seq, seqState_t* seqState)
{
    size_t litLength;
    size_t prevOffset;
    size_t offset;
    size_t matchLength;
    const BYTE* dumps = seqState->dumps;
    const BYTE* const de = seqState->dumpsEnd;


    litLength = FSE_decodeSymbol(&(seqState->stateLL), &(seqState->DStream));
    prevOffset = litLength ? seq->offset : seqState->prevOffset;
    seqState->prevOffset = seq->offset;
    if (litLength == MaxLL)
    {
        const U32 add = dumps<de ? *dumps++ : 0;
        if (add < 255) litLength += add;
        else
        {
            if (dumps<=(de-3))
            {
                litLength = ZSTD_readLE24(dumps);
                dumps += 3;
            }
        }
    }


    {
        U32 offsetCode, nbBits;
        offsetCode = FSE_decodeSymbol(&(seqState->stateOffb), &(seqState->DStream));
        if (ZSTD_32bits()) FSE_reloadDStream(&(seqState->DStream));
        nbBits = offsetCode - 1;
        if (offsetCode==0) nbBits = 0;
        offset = ((size_t)1 << (nbBits & ((sizeof(offset)*8)-1))) + FSE_readBits(&(seqState->DStream), nbBits);
        if (ZSTD_32bits()) FSE_reloadDStream(&(seqState->DStream));
        if (offsetCode==0) offset = prevOffset;
    }


    matchLength = FSE_decodeSymbol(&(seqState->stateML), &(seqState->DStream));
    if (matchLength == MaxML)
    {
        const U32 add = dumps<de ? *dumps++ : 0;
        if (add < 255) matchLength += add;
        else
        {
            if (dumps<=(de-3))
            {
                matchLength = ZSTD_readLE24(dumps);
                dumps += 3;
            }
        }
    }
    matchLength += MINMATCH;


    seq->litLength = litLength;
    seq->offset = offset;
    seq->matchLength = matchLength;
    seqState->dumps = dumps;
}
