
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ZDICT_legacy_params_t ;


 size_t ERROR (int ) ;
 scalar_t__ NOISELENGTH ;
 size_t const ZDICT_MIN_SAMPLES_SIZE ;
 int ZDICT_fillNoise (char*,scalar_t__) ;
 size_t ZDICT_totalSampleSize (size_t const*,unsigned int) ;
 size_t ZDICT_trainFromBuffer_unsafe_legacy (void*,size_t,void*,size_t const*,unsigned int,int ) ;
 int free (void*) ;
 void* malloc (scalar_t__) ;
 int memcpy (void*,void const*,size_t const) ;
 int memory_allocation ;

size_t ZDICT_trainFromBuffer_legacy(void* dictBuffer, size_t dictBufferCapacity,
                              const void* samplesBuffer, const size_t* samplesSizes, unsigned nbSamples,
                              ZDICT_legacy_params_t params)
{
    size_t result;
    void* newBuff;
    size_t const sBuffSize = ZDICT_totalSampleSize(samplesSizes, nbSamples);
    if (sBuffSize < ZDICT_MIN_SAMPLES_SIZE) return 0;

    newBuff = malloc(sBuffSize + NOISELENGTH);
    if (!newBuff) return ERROR(memory_allocation);

    memcpy(newBuff, samplesBuffer, sBuffSize);
    ZDICT_fillNoise((char*)newBuff + sBuffSize, NOISELENGTH);

    result =
        ZDICT_trainFromBuffer_unsafe_legacy(dictBuffer, dictBufferCapacity, newBuff,
                                            samplesSizes, nbSamples, params);
    free(newBuff);
    return result;
}
