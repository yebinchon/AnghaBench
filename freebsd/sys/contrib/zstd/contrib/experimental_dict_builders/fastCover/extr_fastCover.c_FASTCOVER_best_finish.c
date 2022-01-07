
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ZDICT_fastCover_params_t ;
struct TYPE_3__ {size_t liveJobs; size_t compressedSize; size_t dictSize; int cond; int mutex; int parameters; scalar_t__ dict; } ;
typedef TYPE_1__ FASTCOVER_best_t ;


 size_t ERROR (int ) ;
 int GENERIC ;
 int ZSTD_pthread_cond_broadcast (int *) ;
 int ZSTD_pthread_mutex_lock (int *) ;
 int ZSTD_pthread_mutex_unlock (int *) ;
 int free (scalar_t__) ;
 scalar_t__ malloc (size_t) ;
 int memcpy (scalar_t__,void*,size_t) ;

__attribute__((used)) static void FASTCOVER_best_finish(FASTCOVER_best_t *best, size_t compressedSize,
                              ZDICT_fastCover_params_t parameters, void *dict,
                              size_t dictSize) {
  if (!best) {
    return;
  }
  {
    size_t liveJobs;
    ZSTD_pthread_mutex_lock(&best->mutex);
    --best->liveJobs;
    liveJobs = best->liveJobs;

    if (compressedSize < best->compressedSize) {

      if (!best->dict || best->dictSize < dictSize) {
        if (best->dict) {
          free(best->dict);
        }
        best->dict = malloc(dictSize);
        if (!best->dict) {
          best->compressedSize = ERROR(GENERIC);
          best->dictSize = 0;
          return;
        }
      }

      memcpy(best->dict, dict, dictSize);
      best->dictSize = dictSize;
      best->parameters = parameters;
      best->compressedSize = compressedSize;
    }
    ZSTD_pthread_mutex_unlock(&best->mutex);
    if (liveJobs == 0) {
      ZSTD_pthread_cond_broadcast(&best->cond);
    }
  }
}
