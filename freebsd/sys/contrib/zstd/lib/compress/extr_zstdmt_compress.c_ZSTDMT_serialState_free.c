
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int bucketOffsets; int hashTable; } ;
struct TYPE_5__ {int customMem; } ;
struct TYPE_7__ {TYPE_2__ ldmState; int ldmWindowCond; int ldmWindowMutex; int cond; int mutex; TYPE_1__ params; } ;
typedef TYPE_3__ serialState_t ;
typedef int ZSTD_customMem ;


 int ZSTD_free (int ,int ) ;
 int ZSTD_pthread_cond_destroy (int *) ;
 int ZSTD_pthread_mutex_destroy (int *) ;

__attribute__((used)) static void ZSTDMT_serialState_free(serialState_t* serialState)
{
    ZSTD_customMem cMem = serialState->params.customMem;
    ZSTD_pthread_mutex_destroy(&serialState->mutex);
    ZSTD_pthread_cond_destroy(&serialState->cond);
    ZSTD_pthread_mutex_destroy(&serialState->ldmWindowMutex);
    ZSTD_pthread_cond_destroy(&serialState->ldmWindowCond);
    ZSTD_free(serialState->ldmState.hashTable, cMem);
    ZSTD_free(serialState->ldmState.bucketOffsets, cMem);
}
