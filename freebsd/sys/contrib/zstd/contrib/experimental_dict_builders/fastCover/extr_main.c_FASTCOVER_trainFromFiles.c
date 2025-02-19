
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int nbSamples; int samplesSizes; int srcBuffer; } ;
typedef TYPE_2__ sampleInfo ;
struct TYPE_8__ {unsigned int notificationLevel; } ;
struct TYPE_10__ {int splitPoint; int steps; int f; int d; int k; TYPE_1__ zParams; } ;
typedef TYPE_3__ ZDICT_fastCover_params_t ;
typedef int U32 ;


 int DISPLAYLEVEL (int,char*,int ,...) ;
 int EXM_THROW (int,char*) ;
 int ZDICT_getErrorName (size_t) ;
 scalar_t__ ZDICT_isError (size_t) ;
 size_t ZDICT_optimizeTrainFromBuffer_fastCover (void* const,unsigned int,int ,int ,int ,TYPE_3__*) ;
 size_t ZDICT_trainFromBuffer_fastCover (void* const,unsigned int,int ,int ,int ,TYPE_3__) ;
 int free (void* const) ;
 void* malloc (unsigned int) ;
 int saveDict (char const*,void* const,size_t) ;

int FASTCOVER_trainFromFiles(const char* dictFileName, sampleInfo *info,
                          unsigned maxDictSize,
                          ZDICT_fastCover_params_t *params) {
    unsigned const displayLevel = params->zParams.notificationLevel;
    void* const dictBuffer = malloc(maxDictSize);

    int result = 0;


    if (!dictBuffer)
        EXM_THROW(12, "not enough memory for trainFromFiles");

    { size_t dictSize;

        if (!params->d || !params->k) {
          dictSize = ZDICT_optimizeTrainFromBuffer_fastCover(dictBuffer, maxDictSize, info->srcBuffer,
                                               info->samplesSizes, info->nbSamples, params);
        } else {
          dictSize = ZDICT_trainFromBuffer_fastCover(dictBuffer, maxDictSize, info->srcBuffer,
                                               info->samplesSizes, info->nbSamples, *params);
        }
        DISPLAYLEVEL(2, "k=%u\nd=%u\nf=%u\nsteps=%u\nsplit=%u\n", params->k, params->d, params->f, params->steps, (unsigned)(params->splitPoint*100));
        if (ZDICT_isError(dictSize)) {
            DISPLAYLEVEL(1, "dictionary training failed : %s \n", ZDICT_getErrorName(dictSize));
            result = 1;
            goto _done;
        }

        DISPLAYLEVEL(2, "Save dictionary of size %u into file %s \n", (U32)dictSize, dictFileName);
        saveDict(dictFileName, dictBuffer, dictSize);
    }


_done:
    free(dictBuffer);
    return result;
}
