
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ shrinkDict; int zParams; scalar_t__ shrinkDictMaxRegression; } ;
typedef TYPE_1__ ZDICT_cover_params_t ;
struct TYPE_8__ {size_t member_1; size_t member_2; int * member_0; } ;
typedef TYPE_2__ COVER_dictSelection_t ;
typedef int BYTE ;


 size_t COVER_checkTotalCompressedSize (TYPE_1__,size_t const*,int const*,size_t*,size_t,size_t,int *,size_t) ;
 TYPE_2__ COVER_dictSelectionError (size_t) ;
 size_t ZDICT_DICTSIZE_MIN ;
 size_t ZDICT_finalizeDictionary (int *,size_t,int *,size_t,int const*,size_t const*,unsigned int,int ) ;
 scalar_t__ ZDICT_isError (size_t) ;
 scalar_t__ ZSTD_isError (size_t) ;
 int free (int *) ;
 scalar_t__ malloc (size_t) ;
 int memcpy (int *,int *,size_t) ;

COVER_dictSelection_t COVER_selectDict(BYTE* customDictContent,
        size_t dictContentSize, const BYTE* samplesBuffer, const size_t* samplesSizes, unsigned nbFinalizeSamples,
        size_t nbCheckSamples, size_t nbSamples, ZDICT_cover_params_t params, size_t* offsets, size_t totalCompressedSize) {

  size_t largestDict = 0;
  size_t largestCompressed = 0;
  BYTE* customDictContentEnd = customDictContent + dictContentSize;

  BYTE * largestDictbuffer = (BYTE *)malloc(dictContentSize);
  BYTE * candidateDictBuffer = (BYTE *)malloc(dictContentSize);
  double regressionTolerance = ((double)params.shrinkDictMaxRegression / 100.0) + 1.00;

  if (!largestDictbuffer || !candidateDictBuffer) {
    free(largestDictbuffer);
    free(candidateDictBuffer);
    return COVER_dictSelectionError(dictContentSize);
  }


  memcpy(largestDictbuffer, customDictContent, dictContentSize);
  dictContentSize = ZDICT_finalizeDictionary(
    largestDictbuffer, dictContentSize, customDictContent, dictContentSize,
    samplesBuffer, samplesSizes, nbFinalizeSamples, params.zParams);

  if (ZDICT_isError(dictContentSize)) {
    free(largestDictbuffer);
    free(candidateDictBuffer);
    return COVER_dictSelectionError(dictContentSize);
  }

  totalCompressedSize = COVER_checkTotalCompressedSize(params, samplesSizes,
                                                       samplesBuffer, offsets,
                                                       nbCheckSamples, nbSamples,
                                                       largestDictbuffer, dictContentSize);

  if (ZSTD_isError(totalCompressedSize)) {
    free(largestDictbuffer);
    free(candidateDictBuffer);
    return COVER_dictSelectionError(totalCompressedSize);
  }

  if (params.shrinkDict == 0) {
    COVER_dictSelection_t selection = { largestDictbuffer, dictContentSize, totalCompressedSize };
    free(candidateDictBuffer);
    return selection;
  }

  largestDict = dictContentSize;
  largestCompressed = totalCompressedSize;
  dictContentSize = ZDICT_DICTSIZE_MIN;


  while (dictContentSize < largestDict) {
    memcpy(candidateDictBuffer, largestDictbuffer, largestDict);
    dictContentSize = ZDICT_finalizeDictionary(
      candidateDictBuffer, dictContentSize, customDictContentEnd - dictContentSize, dictContentSize,
      samplesBuffer, samplesSizes, nbFinalizeSamples, params.zParams);

    if (ZDICT_isError(dictContentSize)) {
      free(largestDictbuffer);
      free(candidateDictBuffer);
      return COVER_dictSelectionError(dictContentSize);

    }

    totalCompressedSize = COVER_checkTotalCompressedSize(params, samplesSizes,
                                                         samplesBuffer, offsets,
                                                         nbCheckSamples, nbSamples,
                                                         candidateDictBuffer, dictContentSize);

    if (ZSTD_isError(totalCompressedSize)) {
      free(largestDictbuffer);
      free(candidateDictBuffer);
      return COVER_dictSelectionError(totalCompressedSize);
    }

    if (totalCompressedSize <= largestCompressed * regressionTolerance) {
      COVER_dictSelection_t selection = { candidateDictBuffer, dictContentSize, totalCompressedSize };
      free(largestDictbuffer);
      return selection;
    }
    dictContentSize *= 2;
  }
  dictContentSize = largestDict;
  totalCompressedSize = largestCompressed;
  {
    COVER_dictSelection_t selection = { largestDictbuffer, dictContentSize, totalCompressedSize };
    free(candidateDictBuffer);
    return selection;
  }
}
