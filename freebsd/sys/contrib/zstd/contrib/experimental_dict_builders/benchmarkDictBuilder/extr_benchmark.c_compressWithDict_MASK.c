#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int nbSamples; size_t* samplesSizes; scalar_t__ srcBuffer; } ;
typedef  TYPE_1__ sampleInfo ;
struct TYPE_6__ {scalar_t__ dictSize; int /*<<< orphan*/  dictBuffer; } ;
typedef  TYPE_2__ dictInfo ;
typedef  int /*<<< orphan*/  ZSTD_CDict ;
typedef  int /*<<< orphan*/  ZSTD_CCtx ;
typedef  int /*<<< orphan*/  BYTE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,size_t) ; 
 size_t FUNC1 (size_t,size_t) ; 
 size_t FUNC2 (size_t) ; 
 size_t FUNC3 (int /*<<< orphan*/ *,void*,size_t,int /*<<< orphan*/  const* const,size_t,int) ; 
 size_t FUNC4 (int /*<<< orphan*/ *,void*,size_t,int /*<<< orphan*/  const* const,size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 () ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (size_t) ; 
 int /*<<< orphan*/  FUNC10 (size_t*) ; 
 void* FUNC11 (int) ; 

double FUNC12(sampleInfo *srcInfo, dictInfo* dInfo, int compressionLevel, int displayLevel) {
  /* Local variables */
  size_t totalCompressedSize = 0;
  size_t totalOriginalSize = 0;
  const unsigned hasDict = dInfo->dictSize > 0 ? 1 : 0;
  double cRatio;
  size_t dstCapacity;
  int i;

  /* Pointers */
  ZSTD_CDict *cdict = NULL;
  ZSTD_CCtx* cctx = NULL;
  size_t *offsets = NULL;
  void* dst = NULL;

  /* Allocate dst with enough space to compress the maximum sized sample */
  {
    size_t maxSampleSize = 0;
    for (i = 0; i < srcInfo->nbSamples; i++) {
      maxSampleSize = FUNC1(srcInfo->samplesSizes[i], maxSampleSize);
    }
    dstCapacity = FUNC2(maxSampleSize);
    dst = FUNC11(dstCapacity);
  }

  /* Calculate offset for each sample */
  offsets = (size_t *)FUNC11((srcInfo->nbSamples + 1) * sizeof(size_t));
  offsets[0] = 0;
  for (i = 1; i <= srcInfo->nbSamples; i++) {
    offsets[i] = offsets[i - 1] + srcInfo->samplesSizes[i - 1];
  }

  /* Create the cctx */
  cctx = FUNC5();
  if(!cctx || !dst) {
    cRatio = -1;
    goto _cleanup;
  }

  /* Create CDict if there's a dictionary stored on buffer */
  if (hasDict) {
    cdict = FUNC6(dInfo->dictBuffer, dInfo->dictSize, compressionLevel);
    if(!cdict) {
      cRatio = -1;
      goto _cleanup;
    }
  }

  /* Compress each sample and sum their sizes*/
  const BYTE *const samples = (const BYTE *)srcInfo->srcBuffer;
  for (i = 0; i < srcInfo->nbSamples; i++) {
    size_t compressedSize;
    if(hasDict) {
      compressedSize = FUNC4(cctx, dst, dstCapacity, samples + offsets[i], srcInfo->samplesSizes[i], cdict);
    } else {
      compressedSize = FUNC3(cctx, dst, dstCapacity,samples + offsets[i], srcInfo->samplesSizes[i], compressionLevel);
    }
    if (FUNC9(compressedSize)) {
      cRatio = -1;
      goto _cleanup;
    }
    totalCompressedSize += compressedSize;
  }

  /* Sum original sizes */
  for (i = 0; i<srcInfo->nbSamples; i++) {
    totalOriginalSize += srcInfo->samplesSizes[i];
  }

  /* Calculate compression ratio */
  FUNC0(2, "original size is %lu\n", totalOriginalSize);
  FUNC0(2, "compressed size is %lu\n", totalCompressedSize);
  cRatio = (double)totalOriginalSize/(double)totalCompressedSize;

_cleanup:
  FUNC10(dst);
  FUNC10(offsets);
  FUNC7(cctx);
  FUNC8(cdict);
  return cRatio;
}