
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned int nextJobID; int mutex; int ldmWindowMutex; int ldmWindowCond; int ldmWindow; int cond; } ;
typedef TYPE_1__ serialState_t ;


 int DEBUGLOG (int,char*,unsigned int) ;
 int ZSTD_PTHREAD_MUTEX_LOCK (int *) ;
 int ZSTD_isError (size_t) ;
 int ZSTD_pthread_cond_broadcast (int *) ;
 int ZSTD_pthread_cond_signal (int *) ;
 int ZSTD_pthread_mutex_unlock (int *) ;
 int ZSTD_window_clear (int *) ;
 int assert (int ) ;

__attribute__((used)) static void ZSTDMT_serialState_ensureFinished(serialState_t* serialState,
                                              unsigned jobID, size_t cSize)
{
    ZSTD_PTHREAD_MUTEX_LOCK(&serialState->mutex);
    if (serialState->nextJobID <= jobID) {
        assert(ZSTD_isError(cSize)); (void)cSize;
        DEBUGLOG(5, "Skipping past job %u because of error", jobID);
        serialState->nextJobID = jobID + 1;
        ZSTD_pthread_cond_broadcast(&serialState->cond);

        ZSTD_PTHREAD_MUTEX_LOCK(&serialState->ldmWindowMutex);
        ZSTD_window_clear(&serialState->ldmWindow);
        ZSTD_pthread_cond_signal(&serialState->ldmWindowCond);
        ZSTD_pthread_mutex_unlock(&serialState->ldmWindowMutex);
    }
    ZSTD_pthread_mutex_unlock(&serialState->mutex);

}
