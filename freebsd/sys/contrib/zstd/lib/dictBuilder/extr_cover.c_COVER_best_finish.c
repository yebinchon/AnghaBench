
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int ZDICT_cover_params_t ;
struct TYPE_6__ {size_t liveJobs; size_t compressedSize; size_t dictSize; int mutex; int cond; int parameters; int dict; } ;
struct TYPE_5__ {size_t totalCompressedSize; size_t dictSize; void* dictContent; } ;
typedef TYPE_1__ COVER_dictSelection_t ;
typedef TYPE_2__ COVER_best_t ;


 size_t ERROR (int ) ;
 int GENERIC ;
 int ZSTD_pthread_cond_broadcast (int *) ;
 int ZSTD_pthread_cond_signal (int *) ;
 int ZSTD_pthread_mutex_lock (int *) ;
 int ZSTD_pthread_mutex_unlock (int *) ;
 int free (int ) ;
 int malloc (size_t) ;
 int memcpy (int ,void*,size_t) ;

void COVER_best_finish(COVER_best_t *best, ZDICT_cover_params_t parameters,
                              COVER_dictSelection_t selection) {
  void* dict = selection.dictContent;
  size_t compressedSize = selection.totalCompressedSize;
  size_t dictSize = selection.dictSize;
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
          ZSTD_pthread_cond_signal(&best->cond);
          ZSTD_pthread_mutex_unlock(&best->mutex);
          return;
        }
      }

      if (dict) {
        memcpy(best->dict, dict, dictSize);
        best->dictSize = dictSize;
        best->parameters = parameters;
        best->compressedSize = compressedSize;
      }
    }
    if (liveJobs == 0) {
      ZSTD_pthread_cond_broadcast(&best->cond);
    }
    ZSTD_pthread_mutex_unlock(&best->mutex);
  }
}
