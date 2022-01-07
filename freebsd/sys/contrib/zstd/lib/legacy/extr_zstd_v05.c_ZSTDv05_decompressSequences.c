
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int sequence ;
struct TYPE_9__ {void* offset; } ;
typedef TYPE_1__ seq_t ;
struct TYPE_10__ {int DStream; int stateML; int stateOffb; int stateLL; void* prevOffset; int const* dumpsEnd; int const* dumps; } ;
typedef TYPE_2__ seqState_t ;
struct TYPE_11__ {int litSize; unsigned int* LLTable; unsigned int* MLTable; unsigned int* OffTable; int flagStaticTables; scalar_t__ dictEnd; scalar_t__ vBase; scalar_t__ base; int * litPtr; } ;
typedef TYPE_3__ ZSTDv05_DCtx ;
typedef int BYTE ;


 scalar_t__ BITv05_DStream_completed ;
 size_t BITv05_initDStream (int *,int const*,int) ;
 scalar_t__ BITv05_reloadDStream (int *) ;
 size_t ERROR (int ) ;
 scalar_t__ ERR_isError (size_t) ;
 int FSEv05_initDState (int *,int *,unsigned int*) ;
 void* REPCODE_STARTVALUE ;
 size_t ZSTDv05_decodeSeqHeaders (int*,int const**,size_t*,unsigned int*,unsigned int*,unsigned int*,int const*,size_t,int ) ;
 int ZSTDv05_decodeSequence (TYPE_1__*,TYPE_2__*) ;
 size_t ZSTDv05_execSequence (int *,int * const,TYPE_1__,int const**,int const* const,int const* const,int const* const,int const* const) ;
 scalar_t__ ZSTDv05_isError (size_t) ;
 int corruption_detected ;
 int dstSize_tooSmall ;
 int memcpy (int *,int const*,size_t) ;
 int memset (TYPE_1__*,int ,int) ;

__attribute__((used)) static size_t ZSTDv05_decompressSequences(
                               ZSTDv05_DCtx* dctx,
                               void* dst, size_t maxDstSize,
                         const void* seqStart, size_t seqSize)
{
    const BYTE* ip = (const BYTE*)seqStart;
    const BYTE* const iend = ip + seqSize;
    BYTE* const ostart = (BYTE* const)dst;
    BYTE* op = ostart;
    BYTE* const oend = ostart + maxDstSize;
    size_t errorCode, dumpsLength=0;
    const BYTE* litPtr = dctx->litPtr;
    const BYTE* const litEnd = litPtr + dctx->litSize;
    int nbSeq=0;
    const BYTE* dumps = ((void*)0);
    unsigned* DTableLL = dctx->LLTable;
    unsigned* DTableML = dctx->MLTable;
    unsigned* DTableOffb = dctx->OffTable;
    const BYTE* const base = (const BYTE*) (dctx->base);
    const BYTE* const vBase = (const BYTE*) (dctx->vBase);
    const BYTE* const dictEnd = (const BYTE*) (dctx->dictEnd);


    errorCode = ZSTDv05_decodeSeqHeaders(&nbSeq, &dumps, &dumpsLength,
                                      DTableLL, DTableML, DTableOffb,
                                      ip, seqSize, dctx->flagStaticTables);
    if (ZSTDv05_isError(errorCode)) return errorCode;
    ip += errorCode;


    if (nbSeq) {
        seq_t sequence;
        seqState_t seqState;

        memset(&sequence, 0, sizeof(sequence));
        sequence.offset = REPCODE_STARTVALUE;
        seqState.dumps = dumps;
        seqState.dumpsEnd = dumps + dumpsLength;
        seqState.prevOffset = REPCODE_STARTVALUE;
        errorCode = BITv05_initDStream(&(seqState.DStream), ip, iend-ip);
        if (ERR_isError(errorCode)) return ERROR(corruption_detected);
        FSEv05_initDState(&(seqState.stateLL), &(seqState.DStream), DTableLL);
        FSEv05_initDState(&(seqState.stateOffb), &(seqState.DStream), DTableOffb);
        FSEv05_initDState(&(seqState.stateML), &(seqState.DStream), DTableML);

        for ( ; (BITv05_reloadDStream(&(seqState.DStream)) <= BITv05_DStream_completed) && nbSeq ; ) {
            size_t oneSeqSize;
            nbSeq--;
            ZSTDv05_decodeSequence(&sequence, &seqState);
            oneSeqSize = ZSTDv05_execSequence(op, oend, sequence, &litPtr, litEnd, base, vBase, dictEnd);
            if (ZSTDv05_isError(oneSeqSize)) return oneSeqSize;
            op += oneSeqSize;
        }


        if (nbSeq) return ERROR(corruption_detected);
    }


    {
        size_t lastLLSize = litEnd - litPtr;
        if (litPtr > litEnd) return ERROR(corruption_detected);
        if (op+lastLLSize > oend) return ERROR(dstSize_tooSmall);
        memcpy(op, litPtr, lastLLSize);
        op += lastLLSize;
    }

    return op-ostart;
}
