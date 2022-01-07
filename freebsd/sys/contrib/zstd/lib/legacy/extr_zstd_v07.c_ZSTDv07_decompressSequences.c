
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int seq_t ;
struct TYPE_5__ {size_t* prevOffset; int DStream; int stateML; int stateOffb; int stateLL; } ;
typedef TYPE_1__ seqState_t ;
struct TYPE_6__ {int litSize; int fseEntropy; size_t* rep; scalar_t__ dictEnd; scalar_t__ vBase; scalar_t__ base; int * OffTable; int * MLTable; int * LLTable; int * litPtr; } ;
typedef TYPE_2__ ZSTDv07_DCtx ;
typedef size_t U32 ;
typedef int FSEv07_DTable ;
typedef int BYTE ;


 scalar_t__ BITv07_DStream_completed ;
 size_t BITv07_initDStream (int *,int const*,int) ;
 scalar_t__ BITv07_reloadDStream (int *) ;
 size_t ERROR (int ) ;
 scalar_t__ ERR_isError (size_t const) ;
 int FSEv07_initDState (int *,int *,int *) ;
 size_t ZSTDv07_REP_INIT ;
 size_t ZSTDv07_decodeSeqHeaders (int*,int *,int *,int *,int,int const*,size_t) ;
 int ZSTDv07_decodeSequence (TYPE_1__*) ;
 size_t ZSTDv07_execSequence (int *,int * const,int const,int const**,int const* const,int const* const,int const* const,int const* const) ;
 scalar_t__ ZSTDv07_isError (size_t const) ;
 int corruption_detected ;
 int dstSize_tooSmall ;
 int memcpy (int *,int const*,size_t const) ;

__attribute__((used)) static size_t ZSTDv07_decompressSequences(
                               ZSTDv07_DCtx* dctx,
                               void* dst, size_t maxDstSize,
                         const void* seqStart, size_t seqSize)
{
    const BYTE* ip = (const BYTE*)seqStart;
    const BYTE* const iend = ip + seqSize;
    BYTE* const ostart = (BYTE* const)dst;
    BYTE* const oend = ostart + maxDstSize;
    BYTE* op = ostart;
    const BYTE* litPtr = dctx->litPtr;
    const BYTE* const litEnd = litPtr + dctx->litSize;
    FSEv07_DTable* DTableLL = dctx->LLTable;
    FSEv07_DTable* DTableML = dctx->MLTable;
    FSEv07_DTable* DTableOffb = dctx->OffTable;
    const BYTE* const base = (const BYTE*) (dctx->base);
    const BYTE* const vBase = (const BYTE*) (dctx->vBase);
    const BYTE* const dictEnd = (const BYTE*) (dctx->dictEnd);
    int nbSeq;


    { size_t const seqHSize = ZSTDv07_decodeSeqHeaders(&nbSeq, DTableLL, DTableML, DTableOffb, dctx->fseEntropy, ip, seqSize);
        if (ZSTDv07_isError(seqHSize)) return seqHSize;
        ip += seqHSize;
    }


    if (nbSeq) {
        seqState_t seqState;
        dctx->fseEntropy = 1;
        { U32 i; for (i=0; i<ZSTDv07_REP_INIT; i++) seqState.prevOffset[i] = dctx->rep[i]; }
        { size_t const errorCode = BITv07_initDStream(&(seqState.DStream), ip, iend-ip);
          if (ERR_isError(errorCode)) return ERROR(corruption_detected); }
        FSEv07_initDState(&(seqState.stateLL), &(seqState.DStream), DTableLL);
        FSEv07_initDState(&(seqState.stateOffb), &(seqState.DStream), DTableOffb);
        FSEv07_initDState(&(seqState.stateML), &(seqState.DStream), DTableML);

        for ( ; (BITv07_reloadDStream(&(seqState.DStream)) <= BITv07_DStream_completed) && nbSeq ; ) {
            nbSeq--;
            { seq_t const sequence = ZSTDv07_decodeSequence(&seqState);
                size_t const oneSeqSize = ZSTDv07_execSequence(op, oend, sequence, &litPtr, litEnd, base, vBase, dictEnd);
                if (ZSTDv07_isError(oneSeqSize)) return oneSeqSize;
                op += oneSeqSize;
        } }


        if (nbSeq) return ERROR(corruption_detected);

        { U32 i; for (i=0; i<ZSTDv07_REP_INIT; i++) dctx->rep[i] = (U32)(seqState.prevOffset[i]); }
    }


    { size_t const lastLLSize = litEnd - litPtr;

        if (lastLLSize > (size_t)(oend-op)) return ERROR(dstSize_tooSmall);
        memcpy(op, litPtr, lastLLSize);
        op += lastLLSize;
    }

    return op-ostart;
}
