#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_5__ ;
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;
typedef  struct TYPE_14__   TYPE_10__ ;

/* Type definitions */
struct TYPE_18__ {unsigned int hashLog; unsigned int bucketSizeLog; int hashRateLog; scalar_t__ enableLdm; int /*<<< orphan*/  minMatchLength; } ;
struct TYPE_15__ {scalar_t__ checksumFlag; } ;
struct TYPE_14__ {unsigned int windowLog; } ;
struct TYPE_19__ {scalar_t__ jobSize; TYPE_4__ ldmParams; int /*<<< orphan*/  customMem; TYPE_1__ fParams; TYPE_10__ cParams; } ;
struct TYPE_16__ {TYPE_4__* bucketOffsets; TYPE_4__* hashTable; int /*<<< orphan*/  window; int /*<<< orphan*/  hashPower; } ;
struct TYPE_17__ {TYPE_5__ params; TYPE_2__ ldmState; int /*<<< orphan*/  ldmWindow; int /*<<< orphan*/  xxhState; scalar_t__ nextJobID; } ;
typedef  TYPE_3__ serialState_t ;
typedef  TYPE_4__ ldmEntry_t ;
typedef  int /*<<< orphan*/  ZSTD_customMem ;
typedef  TYPE_5__ ZSTD_CCtx_params ;
typedef  int /*<<< orphan*/  ZSTDMT_seqPool ;
typedef  scalar_t__ U32 ;
typedef  TYPE_4__ BYTE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*,TYPE_10__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__,size_t) ; 
 scalar_t__ FUNC6 (size_t const,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_4__*,int /*<<< orphan*/ ,size_t const) ; 

__attribute__((used)) static int FUNC11(serialState_t* serialState, ZSTDMT_seqPool* seqPool, ZSTD_CCtx_params params, size_t jobSize)
{
    /* Adjust parameters */
    if (params.ldmParams.enableLdm) {
        FUNC0(4, "LDM window size = %u KB", (1U << params.cParams.windowLog) >> 10);
        FUNC4(&params.ldmParams, &params.cParams);
        FUNC9(params.ldmParams.hashLog >= params.ldmParams.bucketSizeLog);
        FUNC9(params.ldmParams.hashRateLog < 32);
        serialState->ldmState.hashPower =
                FUNC7(params.ldmParams.minMatchLength);
    } else {
        FUNC10(&params.ldmParams, 0, sizeof(params.ldmParams));
    }
    serialState->nextJobID = 0;
    if (params.fParams.checksumFlag)
        FUNC1(&serialState->xxhState, 0);
    if (params.ldmParams.enableLdm) {
        ZSTD_customMem cMem = params.customMem;
        unsigned const hashLog = params.ldmParams.hashLog;
        size_t const hashSize = ((size_t)1 << hashLog) * sizeof(ldmEntry_t);
        unsigned const bucketLog =
            params.ldmParams.hashLog - params.ldmParams.bucketSizeLog;
        size_t const bucketSize = (size_t)1 << bucketLog;
        unsigned const prevBucketLog =
            serialState->params.ldmParams.hashLog -
            serialState->params.ldmParams.bucketSizeLog;
        /* Size the seq pool tables */
        FUNC2(seqPool, FUNC5(params.ldmParams, jobSize));
        /* Reset the window */
        FUNC8(&serialState->ldmState.window);
        serialState->ldmWindow = serialState->ldmState.window;
        /* Resize tables and output space if necessary. */
        if (serialState->ldmState.hashTable == NULL || serialState->params.ldmParams.hashLog < hashLog) {
            FUNC3(serialState->ldmState.hashTable, cMem);
            serialState->ldmState.hashTable = (ldmEntry_t*)FUNC6(hashSize, cMem);
        }
        if (serialState->ldmState.bucketOffsets == NULL || prevBucketLog < bucketLog) {
            FUNC3(serialState->ldmState.bucketOffsets, cMem);
            serialState->ldmState.bucketOffsets = (BYTE*)FUNC6(bucketSize, cMem);
        }
        if (!serialState->ldmState.hashTable || !serialState->ldmState.bucketOffsets)
            return 1;
        /* Zero the tables */
        FUNC10(serialState->ldmState.hashTable, 0, hashSize);
        FUNC10(serialState->ldmState.bucketOffsets, 0, bucketSize);
    }
    serialState->params = params;
    serialState->params.jobSize = (U32)jobSize;
    return 0;
}