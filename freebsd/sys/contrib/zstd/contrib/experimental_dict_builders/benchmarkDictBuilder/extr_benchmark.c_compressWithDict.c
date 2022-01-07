
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int nbSamples; size_t* samplesSizes; scalar_t__ srcBuffer; } ;
typedef TYPE_1__ sampleInfo ;
struct TYPE_6__ {scalar_t__ dictSize; int dictBuffer; } ;
typedef TYPE_2__ dictInfo ;
typedef int ZSTD_CDict ;
typedef int ZSTD_CCtx ;
typedef int BYTE ;


 int DISPLAYLEVEL (int,char*,size_t) ;
 size_t MAX (size_t,size_t) ;
 size_t ZSTD_compressBound (size_t) ;
 size_t ZSTD_compressCCtx (int *,void*,size_t,int const* const,size_t,int) ;
 size_t ZSTD_compress_usingCDict (int *,void*,size_t,int const* const,size_t,int *) ;
 int * ZSTD_createCCtx () ;
 int * ZSTD_createCDict (int ,scalar_t__,int) ;
 int ZSTD_freeCCtx (int *) ;
 int ZSTD_freeCDict (int *) ;
 scalar_t__ ZSTD_isError (size_t) ;
 int free (size_t*) ;
 void* malloc (int) ;

double compressWithDict(sampleInfo *srcInfo, dictInfo* dInfo, int compressionLevel, int displayLevel) {

  size_t totalCompressedSize = 0;
  size_t totalOriginalSize = 0;
  const unsigned hasDict = dInfo->dictSize > 0 ? 1 : 0;
  double cRatio;
  size_t dstCapacity;
  int i;


  ZSTD_CDict *cdict = ((void*)0);
  ZSTD_CCtx* cctx = ((void*)0);
  size_t *offsets = ((void*)0);
  void* dst = ((void*)0);


  {
    size_t maxSampleSize = 0;
    for (i = 0; i < srcInfo->nbSamples; i++) {
      maxSampleSize = MAX(srcInfo->samplesSizes[i], maxSampleSize);
    }
    dstCapacity = ZSTD_compressBound(maxSampleSize);
    dst = malloc(dstCapacity);
  }


  offsets = (size_t *)malloc((srcInfo->nbSamples + 1) * sizeof(size_t));
  offsets[0] = 0;
  for (i = 1; i <= srcInfo->nbSamples; i++) {
    offsets[i] = offsets[i - 1] + srcInfo->samplesSizes[i - 1];
  }


  cctx = ZSTD_createCCtx();
  if(!cctx || !dst) {
    cRatio = -1;
    goto _cleanup;
  }


  if (hasDict) {
    cdict = ZSTD_createCDict(dInfo->dictBuffer, dInfo->dictSize, compressionLevel);
    if(!cdict) {
      cRatio = -1;
      goto _cleanup;
    }
  }


  const BYTE *const samples = (const BYTE *)srcInfo->srcBuffer;
  for (i = 0; i < srcInfo->nbSamples; i++) {
    size_t compressedSize;
    if(hasDict) {
      compressedSize = ZSTD_compress_usingCDict(cctx, dst, dstCapacity, samples + offsets[i], srcInfo->samplesSizes[i], cdict);
    } else {
      compressedSize = ZSTD_compressCCtx(cctx, dst, dstCapacity,samples + offsets[i], srcInfo->samplesSizes[i], compressionLevel);
    }
    if (ZSTD_isError(compressedSize)) {
      cRatio = -1;
      goto _cleanup;
    }
    totalCompressedSize += compressedSize;
  }


  for (i = 0; i<srcInfo->nbSamples; i++) {
    totalOriginalSize += srcInfo->samplesSizes[i];
  }


  DISPLAYLEVEL(2, "original size is %lu\n", totalOriginalSize);
  DISPLAYLEVEL(2, "compressed size is %lu\n", totalCompressedSize);
  cRatio = (double)totalOriginalSize/(double)totalCompressedSize;

_cleanup:
  free(dst);
  free(offsets);
  ZSTD_freeCCtx(cctx);
  ZSTD_freeCDict(cdict);
  return cRatio;
}
