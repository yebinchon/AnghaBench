
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int params ;
typedef int ZDICT_params_t ;


 size_t ZDICT_addEntropyTablesFromBuffer_advanced (void*,size_t,size_t,void const*,size_t const*,unsigned int,int ) ;
 int memset (int *,int ,int) ;

size_t ZDICT_addEntropyTablesFromBuffer(void* dictBuffer, size_t dictContentSize, size_t dictBufferCapacity,
                                  const void* samplesBuffer, const size_t* samplesSizes, unsigned nbSamples)
{
    ZDICT_params_t params;
    memset(&params, 0, sizeof(params));
    return ZDICT_addEntropyTablesFromBuffer_advanced(dictBuffer, dictContentSize, dictBufferCapacity,
                                                     samplesBuffer, samplesSizes, nbSamples,
                                                     params);
}
