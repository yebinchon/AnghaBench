
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_8__ ;
typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_18__ {int enableLdm; } ;
struct TYPE_12__ {scalar_t__ checksumFlag; } ;
struct TYPE_13__ {scalar_t__ jobSize; TYPE_8__ ldmParams; TYPE_1__ fParams; } ;
struct TYPE_17__ {int window; } ;
struct TYPE_14__ {unsigned int nextJobID; TYPE_2__ params; int mutex; int cond; int xxhState; int ldmWindowMutex; int ldmWindowCond; TYPE_6__ ldmState; int ldmWindow; } ;
typedef TYPE_3__ serialState_t ;
struct TYPE_15__ {scalar_t__ pos; scalar_t__ size; scalar_t__ capacity; int * seq; } ;
typedef TYPE_4__ rawSeqStore_t ;
struct TYPE_16__ {scalar_t__ size; int start; } ;
typedef TYPE_5__ range_t ;
typedef int ZSTD_CCtx ;


 int DEBUGLOG (int,char*) ;
 int XXH64_update (int *,int ,scalar_t__) ;
 int ZSTD_PTHREAD_MUTEX_LOCK (int *) ;
 int ZSTD_isError (size_t const) ;
 size_t ZSTD_ldm_generateSequences (TYPE_6__*,TYPE_4__*,TYPE_8__*,int ,scalar_t__) ;
 int ZSTD_pthread_cond_broadcast (int *) ;
 int ZSTD_pthread_cond_signal (int *) ;
 int ZSTD_pthread_cond_wait (int *,int *) ;
 int ZSTD_pthread_mutex_unlock (int *) ;
 size_t ZSTD_referenceExternalSequences (int *,int *,scalar_t__) ;
 int ZSTD_window_update (int *,int ,scalar_t__) ;
 int assert (int) ;

__attribute__((used)) static void ZSTDMT_serialState_update(serialState_t* serialState,
                                      ZSTD_CCtx* jobCCtx, rawSeqStore_t seqStore,
                                      range_t src, unsigned jobID)
{

    ZSTD_PTHREAD_MUTEX_LOCK(&serialState->mutex);
    while (serialState->nextJobID < jobID) {
        DEBUGLOG(5, "wait for serialState->cond");
        ZSTD_pthread_cond_wait(&serialState->cond, &serialState->mutex);
    }

    if (serialState->nextJobID == jobID) {

        if (serialState->params.ldmParams.enableLdm) {
            size_t error;
            assert(seqStore.seq != ((void*)0) && seqStore.pos == 0 &&
                   seqStore.size == 0 && seqStore.capacity > 0);
            assert(src.size <= serialState->params.jobSize);
            ZSTD_window_update(&serialState->ldmState.window, src.start, src.size);
            error = ZSTD_ldm_generateSequences(
                &serialState->ldmState, &seqStore,
                &serialState->params.ldmParams, src.start, src.size);

            assert(!ZSTD_isError(error)); (void)error;



            ZSTD_PTHREAD_MUTEX_LOCK(&serialState->ldmWindowMutex);
            serialState->ldmWindow = serialState->ldmState.window;
            ZSTD_pthread_cond_signal(&serialState->ldmWindowCond);
            ZSTD_pthread_mutex_unlock(&serialState->ldmWindowMutex);
        }
        if (serialState->params.fParams.checksumFlag && src.size > 0)
            XXH64_update(&serialState->xxhState, src.start, src.size);
    }

    serialState->nextJobID++;
    ZSTD_pthread_cond_broadcast(&serialState->cond);
    ZSTD_pthread_mutex_unlock(&serialState->mutex);

    if (seqStore.size > 0) {
        size_t const err = ZSTD_referenceExternalSequences(
            jobCCtx, seqStore.seq, seqStore.size);
        assert(serialState->params.ldmParams.enableLdm);
        assert(!ZSTD_isError(err));
        (void)err;
    }
}
