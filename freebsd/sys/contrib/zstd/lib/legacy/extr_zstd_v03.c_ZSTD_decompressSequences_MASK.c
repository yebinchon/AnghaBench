#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sequence ;
struct TYPE_8__ {int offset; } ;
typedef  TYPE_1__ seq_t ;
struct TYPE_9__ {int prevOffset; int /*<<< orphan*/  DStream; int /*<<< orphan*/  stateML; int /*<<< orphan*/  stateOffb; int /*<<< orphan*/  stateLL; int /*<<< orphan*/  const* dumpsEnd; int /*<<< orphan*/  const* dumps; } ;
typedef  TYPE_2__ seqState_t ;
struct TYPE_10__ {int litSize; scalar_t__ base; int /*<<< orphan*/ * OffTable; int /*<<< orphan*/ * MLTable; int /*<<< orphan*/ * LLTable; int /*<<< orphan*/  const* litPtr; } ;
typedef  TYPE_3__ ZSTD_DCtx ;
typedef  int /*<<< orphan*/  U32 ;
typedef  int /*<<< orphan*/  const BYTE ;

/* Variables and functions */
 scalar_t__ BIT_DStream_completed ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 size_t FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 size_t FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (size_t) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 size_t FUNC6 (int*,int /*<<< orphan*/  const**,size_t*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,TYPE_2__*) ; 
 size_t FUNC8 (int /*<<< orphan*/  const*,TYPE_1__,int /*<<< orphan*/  const**,int /*<<< orphan*/  const* const,int /*<<< orphan*/  const* const,int /*<<< orphan*/  const* const) ; 
 scalar_t__ FUNC9 (size_t) ; 
 int /*<<< orphan*/  corruption_detected ; 
 int /*<<< orphan*/  dstSize_tooSmall ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,size_t) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static size_t FUNC12(
                               void* ctx,
                               void* dst, size_t maxDstSize,
                         const void* seqStart, size_t seqSize)
{
    ZSTD_DCtx* dctx = (ZSTD_DCtx*)ctx;
    const BYTE* ip = (const BYTE*)seqStart;
    const BYTE* const iend = ip + seqSize;
    BYTE* const ostart = (BYTE* const)dst;
    BYTE* op = ostart;
    BYTE* const oend = ostart + maxDstSize;
    size_t errorCode, dumpsLength;
    const BYTE* litPtr = dctx->litPtr;
    const BYTE* const litEnd = litPtr + dctx->litSize;
    int nbSeq;
    const BYTE* dumps;
    U32* DTableLL = dctx->LLTable;
    U32* DTableML = dctx->MLTable;
    U32* DTableOffb = dctx->OffTable;
    BYTE* const base = (BYTE*) (dctx->base);

    /* Build Decoding Tables */
    errorCode = FUNC6(&nbSeq, &dumps, &dumpsLength,
                                      DTableLL, DTableML, DTableOffb,
                                      ip, iend-ip);
    if (FUNC9(errorCode)) return errorCode;
    ip += errorCode;

    /* Regen sequences */
    {
        seq_t sequence;
        seqState_t seqState;

        FUNC11(&sequence, 0, sizeof(sequence));
        seqState.dumps = dumps;
        seqState.dumpsEnd = dumps + dumpsLength;
        seqState.prevOffset = sequence.offset = 4;
        errorCode = FUNC1(&(seqState.DStream), ip, iend-ip);
        if (FUNC4(errorCode)) return FUNC3(corruption_detected);
        FUNC5(&(seqState.stateLL), &(seqState.DStream), DTableLL);
        FUNC5(&(seqState.stateOffb), &(seqState.DStream), DTableOffb);
        FUNC5(&(seqState.stateML), &(seqState.DStream), DTableML);

        for ( ; (FUNC2(&(seqState.DStream)) <= BIT_DStream_completed) && (nbSeq>0) ; )
        {
            size_t oneSeqSize;
            nbSeq--;
            FUNC7(&sequence, &seqState);
            oneSeqSize = FUNC8(op, sequence, &litPtr, litEnd, base, oend);
            if (FUNC9(oneSeqSize)) return oneSeqSize;
            op += oneSeqSize;
        }

        /* check if reached exact end */
        if ( !FUNC0(&(seqState.DStream)) ) return FUNC3(corruption_detected);   /* requested too much : data is corrupted */
        if (nbSeq<0) return FUNC3(corruption_detected);   /* requested too many sequences : data is corrupted */

        /* last literal segment */
        {
            size_t lastLLSize = litEnd - litPtr;
            if (litPtr > litEnd) return FUNC3(corruption_detected);
            if (op+lastLLSize > oend) return FUNC3(dstSize_tooSmall);
            if (op != litPtr) FUNC10(op, litPtr, lastLLSize);
            op += lastLLSize;
        }
    }

    return op-ostart;
}