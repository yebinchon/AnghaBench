#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_26__   TYPE_8__ ;
typedef  struct TYPE_25__   TYPE_7__ ;
typedef  struct TYPE_24__   TYPE_6__ ;
typedef  struct TYPE_23__   TYPE_5__ ;
typedef  struct TYPE_22__   TYPE_4__ ;
typedef  struct TYPE_21__   TYPE_3__ ;
typedef  struct TYPE_20__   TYPE_2__ ;
typedef  struct TYPE_19__   TYPE_1__ ;
typedef  struct TYPE_18__   TYPE_13__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  seqDef ;
typedef  int /*<<< orphan*/  rawSeq ;
typedef  int /*<<< orphan*/  ldmEntry_t ;
typedef  int /*<<< orphan*/  ZSTD_indexResetPolicy_e ;
typedef  int /*<<< orphan*/  ZSTD_cwksp ;
typedef  int /*<<< orphan*/  ZSTD_compressedBlockState_t ;
typedef  int /*<<< orphan*/  ZSTD_compResetPolicy_e ;
typedef  scalar_t__ ZSTD_buffered_policy_e ;
struct TYPE_18__ {size_t hashLog; size_t bucketSizeLog; int hashRateLog; scalar_t__ enableLdm; int /*<<< orphan*/  minMatchLength; } ;
struct TYPE_25__ {scalar_t__ windowLog; int minMatch; } ;
struct TYPE_19__ {int /*<<< orphan*/  contentSizeFlag; } ;
struct TYPE_23__ {TYPE_13__ ldmParams; TYPE_7__ cParams; TYPE_1__ fParams; } ;
typedef  TYPE_5__ ZSTD_CCtx_params ;
struct TYPE_21__ {int /*<<< orphan*/  window; int /*<<< orphan*/ * hashTable; int /*<<< orphan*/ * bucketOffsets; int /*<<< orphan*/  hashPower; } ;
struct TYPE_26__ {TYPE_7__ cParams; int /*<<< orphan*/  window; } ;
struct TYPE_22__ {TYPE_8__ matchState; int /*<<< orphan*/ * prevCBlock; int /*<<< orphan*/ * nextCBlock; } ;
struct TYPE_20__ {size_t maxNbLit; size_t maxNbSeq; int /*<<< orphan*/ * sequencesStart; void* ofCode; void* mlCode; void* llCode; void* litStart; } ;
struct TYPE_24__ {int isFirstBlock; size_t* entropyWorkspace; scalar_t__ pledgedSrcSizePlusOne; size_t blockSize; size_t inBuffSize; char* inBuff; size_t outBuffSize; char* outBuff; size_t maxNbLdmSequences; TYPE_3__ ldmState; int /*<<< orphan*/ * ldmSequences; TYPE_4__ blockState; TYPE_2__ seqStore; scalar_t__ dictID; int /*<<< orphan*/  stage; int /*<<< orphan*/  xxhState; TYPE_5__ appliedParams; scalar_t__ producedCSize; scalar_t__ consumedSrcSize; int /*<<< orphan*/  customMem; scalar_t__ staticSize; int /*<<< orphan*/  workspace; } ;
typedef  TYPE_6__ ZSTD_CCtx ;
typedef  scalar_t__ U64 ;
typedef  size_t U32 ;
typedef  int /*<<< orphan*/  BYTE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int HUF_WORKSPACE_SIZE ; 
 size_t FUNC2 (int,size_t) ; 
 size_t FUNC3 (scalar_t__,size_t const) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int /*<<< orphan*/ ,char*) ; 
 size_t const WILDCOPY_OVERLENGTH ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ ZSTD_BLOCKSIZE_MAX ; 
 scalar_t__ const ZSTD_CONTENTSIZE_UNKNOWN ; 
 int /*<<< orphan*/  FUNC6 (TYPE_7__) ; 
 int FUNC7 (size_t const) ; 
 int FUNC8 (size_t const) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ * const) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ * const,int /*<<< orphan*/ ) ; 
 int FUNC11 (int /*<<< orphan*/ * const,int) ; 
 int FUNC12 (int /*<<< orphan*/ * const,size_t const) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ * const) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ * const,size_t const,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ * const,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ * const,size_t const) ; 
 void* FUNC17 (int /*<<< orphan*/ * const,size_t const) ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ * const,int) ; 
 int FUNC19 (int /*<<< orphan*/ * const) ; 
 scalar_t__ FUNC20 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (TYPE_13__*,TYPE_7__*) ; 
 size_t FUNC23 (TYPE_13__,size_t const) ; 
 size_t FUNC24 (TYPE_13__) ; 
 int /*<<< orphan*/  FUNC25 (TYPE_6__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ZSTD_resetTarget_CCtx ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC27 (TYPE_8__*,int /*<<< orphan*/ * const,TYPE_7__*,int /*<<< orphan*/  const,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ ) ; 
 size_t FUNC29 (TYPE_7__*,int) ; 
 int /*<<< orphan*/  FUNC30 (int /*<<< orphan*/ *) ; 
 scalar_t__ const ZSTDb_buffered ; 
 int /*<<< orphan*/  ZSTDcs_init ; 
 int /*<<< orphan*/  ZSTDirp_continue ; 
 int /*<<< orphan*/  ZSTDirp_reset ; 
 int /*<<< orphan*/  FUNC31 (int) ; 
 int /*<<< orphan*/  memory_allocation ; 
 int /*<<< orphan*/  FUNC32 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,size_t const) ; 

__attribute__((used)) static size_t FUNC33(ZSTD_CCtx* zc,
                                      ZSTD_CCtx_params params,
                                      U64 const pledgedSrcSize,
                                      ZSTD_compResetPolicy_e const crp,
                                      ZSTD_buffered_policy_e const zbuff)
{
    ZSTD_cwksp* const ws = &zc->workspace;
    FUNC0(4, "ZSTD_resetCCtx_internal: pledgedSrcSize=%u, wlog=%u",
                (U32)pledgedSrcSize, params.cParams.windowLog);
    FUNC31(!FUNC21(FUNC6(params.cParams)));

    zc->isFirstBlock = 1;

    if (params.ldmParams.enableLdm) {
        /* Adjust long distance matching parameters */
        FUNC22(&params.ldmParams, &params.cParams);
        FUNC31(params.ldmParams.hashLog >= params.ldmParams.bucketSizeLog);
        FUNC31(params.ldmParams.hashRateLog < 32);
        zc->ldmState.hashPower = FUNC28(params.ldmParams.minMatchLength);
    }

    {   size_t const windowSize = FUNC2(1, (size_t)FUNC3(((U64)1 << params.cParams.windowLog), pledgedSrcSize));
        size_t const blockSize = FUNC3(ZSTD_BLOCKSIZE_MAX, windowSize);
        U32    const divider = (params.cParams.minMatch==3) ? 3 : 4;
        size_t const maxNbSeq = blockSize / divider;
        size_t const tokenSpace = FUNC8(WILDCOPY_OVERLENGTH + blockSize)
                                + FUNC8(maxNbSeq * sizeof(seqDef))
                                + 3 * FUNC8(maxNbSeq * sizeof(BYTE));
        size_t const buffOutSize = (zbuff==ZSTDb_buffered) ? FUNC7(blockSize)+1 : 0;
        size_t const buffInSize = (zbuff==ZSTDb_buffered) ? windowSize + blockSize : 0;
        size_t const matchStateSize = FUNC29(&params.cParams, /* forCCtx */ 1);
        size_t const maxNbLdmSeq = FUNC23(params.ldmParams, blockSize);

        ZSTD_indexResetPolicy_e needsIndexReset = ZSTDirp_continue;

        if (FUNC20(zc->blockState.matchState.window)) {
            needsIndexReset = ZSTDirp_reset;
        }

        FUNC10(ws, 0);

        /* Check if workspace is large enough, alloc a new one if needed */
        {   size_t const cctxSpace = zc->staticSize ? FUNC8(sizeof(ZSTD_CCtx)) : 0;
            size_t const entropySpace = FUNC8(HUF_WORKSPACE_SIZE);
            size_t const blockStateSpace = 2 * FUNC8(sizeof(ZSTD_compressedBlockState_t));
            size_t const bufferSpace = FUNC8(buffInSize) + FUNC8(buffOutSize);
            size_t const ldmSpace = FUNC24(params.ldmParams);
            size_t const ldmSeqSpace = FUNC8(maxNbLdmSeq * sizeof(rawSeq));

            size_t const neededSpace =
                cctxSpace +
                entropySpace +
                blockStateSpace +
                ldmSpace +
                ldmSeqSpace +
                matchStateSize +
                tokenSpace +
                bufferSpace;

            int const workspaceTooSmall = FUNC19(ws) < neededSpace;
            int const workspaceWasteful = FUNC12(ws, neededSpace);

            FUNC0(4, "Need %zuKB workspace, including %zuKB for match state, and %zuKB for buffers",
                        neededSpace>>10, matchStateSize>>10, bufferSpace>>10);
            FUNC0(4, "windowSize: %zu - blockSize: %zu", windowSize, blockSize);

            if (workspaceTooSmall || workspaceWasteful) {
                FUNC0(4, "Resize workspaceSize from %zuKB to %zuKB",
                            FUNC19(ws) >> 10,
                            neededSpace >> 10);

                FUNC4(zc->staticSize, memory_allocation, "static cctx : no resize");

                needsIndexReset = ZSTDirp_reset;

                FUNC15(ws, zc->customMem);
                FUNC1(FUNC14(ws, neededSpace, zc->customMem));

                FUNC0(5, "reserving object space");
                /* Statically sized space.
                 * entropyWorkspace never moves,
                 * though prev/next block swap places */
                FUNC31(FUNC11(ws, 2 * sizeof(ZSTD_compressedBlockState_t)));
                zc->blockState.prevCBlock = (ZSTD_compressedBlockState_t*) FUNC18(ws, sizeof(ZSTD_compressedBlockState_t));
                FUNC4(zc->blockState.prevCBlock == NULL, memory_allocation, "couldn't allocate prevCBlock");
                zc->blockState.nextCBlock = (ZSTD_compressedBlockState_t*) FUNC18(ws, sizeof(ZSTD_compressedBlockState_t));
                FUNC4(zc->blockState.nextCBlock == NULL, memory_allocation, "couldn't allocate nextCBlock");
                zc->entropyWorkspace = (U32*) FUNC18(ws, HUF_WORKSPACE_SIZE);
                FUNC4(zc->blockState.nextCBlock == NULL, memory_allocation, "couldn't allocate entropyWorkspace");
        }   }

        FUNC13(ws);

        /* init params */
        zc->appliedParams = params;
        zc->blockState.matchState.cParams = params.cParams;
        zc->pledgedSrcSizePlusOne = pledgedSrcSize+1;
        zc->consumedSrcSize = 0;
        zc->producedCSize = 0;
        if (pledgedSrcSize == ZSTD_CONTENTSIZE_UNKNOWN)
            zc->appliedParams.fParams.contentSizeFlag = 0;
        FUNC0(4, "pledged content size : %u ; flag : %u",
            (unsigned)pledgedSrcSize, zc->appliedParams.fParams.contentSizeFlag);
        zc->blockSize = blockSize;

        FUNC5(&zc->xxhState, 0);
        zc->stage = ZSTDcs_init;
        zc->dictID = 0;

        FUNC26(zc->blockState.prevCBlock);

        /* ZSTD_wildcopy() is used to copy into the literals buffer,
         * so we have to oversize the buffer by WILDCOPY_OVERLENGTH bytes.
         */
        zc->seqStore.litStart = FUNC17(ws, blockSize + WILDCOPY_OVERLENGTH);
        zc->seqStore.maxNbLit = blockSize;

        /* buffers */
        zc->inBuffSize = buffInSize;
        zc->inBuff = (char*)FUNC17(ws, buffInSize);
        zc->outBuffSize = buffOutSize;
        zc->outBuff = (char*)FUNC17(ws, buffOutSize);

        /* ldm bucketOffsets table */
        if (params.ldmParams.enableLdm) {
            /* TODO: avoid memset? */
            size_t const ldmBucketSize =
                  ((size_t)1) << (params.ldmParams.hashLog -
                                  params.ldmParams.bucketSizeLog);
            zc->ldmState.bucketOffsets = FUNC17(ws, ldmBucketSize);
            FUNC32(zc->ldmState.bucketOffsets, 0, ldmBucketSize);
        }

        /* sequences storage */
        FUNC25(zc, NULL, 0);
        zc->seqStore.maxNbSeq = maxNbSeq;
        zc->seqStore.llCode = FUNC17(ws, maxNbSeq * sizeof(BYTE));
        zc->seqStore.mlCode = FUNC17(ws, maxNbSeq * sizeof(BYTE));
        zc->seqStore.ofCode = FUNC17(ws, maxNbSeq * sizeof(BYTE));
        zc->seqStore.sequencesStart = (seqDef*)FUNC16(ws, maxNbSeq * sizeof(seqDef));

        FUNC1(FUNC27(
            &zc->blockState.matchState,
            ws,
            &params.cParams,
            crp,
            needsIndexReset,
            ZSTD_resetTarget_CCtx));

        /* ldm hash table */
        if (params.ldmParams.enableLdm) {
            /* TODO: avoid memset? */
            size_t const ldmHSize = ((size_t)1) << params.ldmParams.hashLog;
            zc->ldmState.hashTable = (ldmEntry_t*)FUNC16(ws, ldmHSize * sizeof(ldmEntry_t));
            FUNC32(zc->ldmState.hashTable, 0, ldmHSize * sizeof(ldmEntry_t));
            zc->ldmSequences = (rawSeq*)FUNC16(ws, maxNbLdmSeq * sizeof(rawSeq));
            zc->maxNbLdmSequences = maxNbLdmSeq;

            FUNC32(&zc->ldmState.window, 0, sizeof(zc->ldmState.window));
            FUNC30(&zc->ldmState.window);
        }

        FUNC0(3, "wksp: finished allocating, %zd bytes remain available", FUNC9(ws));

        return 0;
    }
}