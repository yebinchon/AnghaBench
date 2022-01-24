#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_8__ ;
typedef  struct TYPE_17__   TYPE_6__ ;
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_18__ {int enableLdm; } ;
struct TYPE_12__ {scalar_t__ checksumFlag; } ;
struct TYPE_13__ {scalar_t__ jobSize; TYPE_8__ ldmParams; TYPE_1__ fParams; } ;
struct TYPE_17__ {int /*<<< orphan*/  window; } ;
struct TYPE_14__ {unsigned int nextJobID; TYPE_2__ params; int /*<<< orphan*/  mutex; int /*<<< orphan*/  cond; int /*<<< orphan*/  xxhState; int /*<<< orphan*/  ldmWindowMutex; int /*<<< orphan*/  ldmWindowCond; TYPE_6__ ldmState; int /*<<< orphan*/  ldmWindow; } ;
typedef  TYPE_3__ serialState_t ;
struct TYPE_15__ {scalar_t__ pos; scalar_t__ size; scalar_t__ capacity; int /*<<< orphan*/ * seq; } ;
typedef  TYPE_4__ rawSeqStore_t ;
struct TYPE_16__ {scalar_t__ size; int /*<<< orphan*/  start; } ;
typedef  TYPE_5__ range_t ;
typedef  int /*<<< orphan*/  ZSTD_CCtx ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (size_t const) ; 
 size_t FUNC4 (TYPE_6__*,TYPE_4__*,TYPE_8__*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 size_t FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 

__attribute__((used)) static void FUNC12(serialState_t* serialState,
                                      ZSTD_CCtx* jobCCtx, rawSeqStore_t seqStore,
                                      range_t src, unsigned jobID)
{
    /* Wait for our turn */
    FUNC2(&serialState->mutex);
    while (serialState->nextJobID < jobID) {
        FUNC0(5, "wait for serialState->cond");
        FUNC7(&serialState->cond, &serialState->mutex);
    }
    /* A future job may error and skip our job */
    if (serialState->nextJobID == jobID) {
        /* It is now our turn, do any processing necessary */
        if (serialState->params.ldmParams.enableLdm) {
            size_t error;
            FUNC11(seqStore.seq != NULL && seqStore.pos == 0 &&
                   seqStore.size == 0 && seqStore.capacity > 0);
            FUNC11(src.size <= serialState->params.jobSize);
            FUNC10(&serialState->ldmState.window, src.start, src.size);
            error = FUNC4(
                &serialState->ldmState, &seqStore,
                &serialState->params.ldmParams, src.start, src.size);
            /* We provide a large enough buffer to never fail. */
            FUNC11(!FUNC3(error)); (void)error;
            /* Update ldmWindow to match the ldmState.window and signal the main
             * thread if it is waiting for a buffer.
             */
            FUNC2(&serialState->ldmWindowMutex);
            serialState->ldmWindow = serialState->ldmState.window;
            FUNC6(&serialState->ldmWindowCond);
            FUNC8(&serialState->ldmWindowMutex);
        }
        if (serialState->params.fParams.checksumFlag && src.size > 0)
            FUNC1(&serialState->xxhState, src.start, src.size);
    }
    /* Now it is the next jobs turn */
    serialState->nextJobID++;
    FUNC5(&serialState->cond);
    FUNC8(&serialState->mutex);

    if (seqStore.size > 0) {
        size_t const err = FUNC9(
            jobCCtx, seqStore.seq, seqStore.size);
        FUNC11(serialState->params.ldmParams.enableLdm);
        FUNC11(!FUNC3(err));
        (void)err;
    }
}