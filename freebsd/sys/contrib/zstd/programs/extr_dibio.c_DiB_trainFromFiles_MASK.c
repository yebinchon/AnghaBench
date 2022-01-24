#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_23__   TYPE_7__ ;
typedef  struct TYPE_22__   TYPE_6__ ;
typedef  struct TYPE_21__   TYPE_5__ ;
typedef  struct TYPE_20__   TYPE_4__ ;
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
struct TYPE_20__ {int nbSamples; size_t const totalSizeToLoad; scalar_t__ oneSampleTooLarge; } ;
typedef  TYPE_4__ fileStats ;
struct TYPE_17__ {unsigned int notificationLevel; } ;
struct TYPE_21__ {TYPE_1__ zParams; } ;
typedef  TYPE_5__ ZDICT_legacy_params_t ;
struct TYPE_19__ {unsigned int notificationLevel; } ;
struct TYPE_22__ {int splitPoint; int /*<<< orphan*/  accel; int /*<<< orphan*/  steps; int /*<<< orphan*/  f; int /*<<< orphan*/  d; int /*<<< orphan*/  k; TYPE_3__ zParams; } ;
typedef  TYPE_6__ ZDICT_fastCover_params_t ;
struct TYPE_18__ {unsigned int notificationLevel; } ;
struct TYPE_23__ {int splitPoint; int /*<<< orphan*/  steps; int /*<<< orphan*/  d; int /*<<< orphan*/  k; TYPE_2__ zParams; } ;
typedef  TYPE_7__ ZDICT_cover_params_t ;

/* Variables and functions */
 size_t COVER_MEMMULT ; 
 int /*<<< orphan*/  FUNC0 (int,char*,...) ; 
 TYPE_4__ FUNC1 (char const**,unsigned int,size_t,unsigned int const) ; 
 int /*<<< orphan*/  FUNC2 (char*,size_t) ; 
 size_t const FUNC3 (size_t const) ; 
 int /*<<< orphan*/  FUNC4 (void* const,size_t*,size_t* const,int,char const**,unsigned int,size_t,unsigned int const) ; 
 int /*<<< orphan*/  FUNC5 (char const*,void* const,size_t) ; 
 int /*<<< orphan*/  FUNC6 (char const**,unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (int,char*) ; 
 size_t FASTCOVER_MEMMULT ; 
 size_t MEMMULT ; 
 int /*<<< orphan*/  FUNC8 (unsigned long long,size_t const) ; 
 size_t NOISELENGTH ; 
 int /*<<< orphan*/  SAMPLESIZE_MAX ; 
 int /*<<< orphan*/  FUNC9 (size_t) ; 
 scalar_t__ FUNC10 (size_t) ; 
 size_t FUNC11 (void* const,unsigned int,void* const,size_t* const,int,TYPE_7__*) ; 
 size_t FUNC12 (void* const,unsigned int,void* const,size_t* const,int,TYPE_6__*) ; 
 size_t FUNC13 (void* const,unsigned int,void* const,size_t* const,int,TYPE_7__) ; 
 size_t FUNC14 (void* const,unsigned int,void* const,size_t* const,int,TYPE_6__) ; 
 size_t FUNC15 (void* const,unsigned int,void* const,size_t* const,int,TYPE_5__) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (void* const) ; 
 void* FUNC18 (size_t) ; 

int FUNC19(const char* dictFileName, unsigned maxDictSize,
                       const char** fileNamesTable, unsigned nbFiles, size_t chunkSize,
                       ZDICT_legacy_params_t* params, ZDICT_cover_params_t* coverParams,
                       ZDICT_fastCover_params_t* fastCoverParams, int optimize)
{
    unsigned const displayLevel = params ? params->zParams.notificationLevel :
                        coverParams ? coverParams->zParams.notificationLevel :
                        fastCoverParams ? fastCoverParams->zParams.notificationLevel :
                        0;   /* should never happen */
    void* const dictBuffer = FUNC18(maxDictSize);
    fileStats const fs = FUNC1(fileNamesTable, nbFiles, chunkSize, displayLevel);
    size_t* const sampleSizes = (size_t*)FUNC18(fs.nbSamples * sizeof(size_t));
    size_t const memMult = params ? MEMMULT :
                           coverParams ? COVER_MEMMULT:
                           FASTCOVER_MEMMULT;
    size_t const maxMem =  FUNC3(fs.totalSizeToLoad * memMult) / memMult;
    size_t loadedSize = (size_t) FUNC8 ((unsigned long long)maxMem, fs.totalSizeToLoad);
    void* const srcBuffer = FUNC18(loadedSize+NOISELENGTH);
    int result = 0;

    /* Checks */
    if ((!sampleSizes) || (!srcBuffer) || (!dictBuffer))
        FUNC7(12, "not enough memory for DiB_trainFiles");   /* should not happen */
    if (fs.oneSampleTooLarge) {
        FUNC0(2, "!  Warning : some sample(s) are very large \n");
        FUNC0(2, "!  Note that dictionary is only useful for small samples. \n");
        FUNC0(2, "!  As a consequence, only the first %u bytes of each sample are loaded \n", SAMPLESIZE_MAX);
    }
    if (fs.nbSamples < 5) {
        FUNC0(2, "!  Warning : nb of samples too low for proper processing ! \n");
        FUNC0(2, "!  Please provide _one file per sample_. \n");
        FUNC0(2, "!  Alternatively, split files into fixed-size blocks representative of samples, with -B# \n");
        FUNC7(14, "nb of samples too low");   /* we now clearly forbid this case */
    }
    if (fs.totalSizeToLoad < (unsigned long long)(8 * maxDictSize)) {
        FUNC0(2, "!  Warning : data size of samples too small for target dictionary size \n");
        FUNC0(2, "!  Samples should be about 100x larger than target dictionary size \n");
    }

    /* init */
    if (loadedSize < fs.totalSizeToLoad)
        FUNC0(1, "Not enough memory; training on %u MB only...\n", (unsigned)(loadedSize >> 20));

    /* Load input buffer */
    FUNC0(3, "Shuffling input files\n");
    FUNC6(fileNamesTable, nbFiles);

    FUNC4(srcBuffer, &loadedSize, sampleSizes, fs.nbSamples, fileNamesTable, nbFiles, chunkSize, displayLevel);

    {   size_t dictSize;
        if (params) {
            FUNC2((char*)srcBuffer + loadedSize, NOISELENGTH);   /* guard band, for end of buffer condition */
            dictSize = FUNC15(dictBuffer, maxDictSize,
                                                           srcBuffer, sampleSizes, fs.nbSamples,
                                                           *params);
        } else if (coverParams) {
            if (optimize) {
              dictSize = FUNC11(dictBuffer, maxDictSize,
                                                             srcBuffer, sampleSizes, fs.nbSamples,
                                                             coverParams);
              if (!FUNC10(dictSize)) {
                  unsigned splitPercentage = (unsigned)(coverParams->splitPoint * 100);
                  FUNC0(2, "k=%u\nd=%u\nsteps=%u\nsplit=%u\n", coverParams->k, coverParams->d,
                              coverParams->steps, splitPercentage);
              }
            } else {
              dictSize = FUNC13(dictBuffer, maxDictSize, srcBuffer,
                                                     sampleSizes, fs.nbSamples, *coverParams);
            }
        } else {
            FUNC16(fastCoverParams != NULL);
            if (optimize) {
              dictSize = FUNC12(dictBuffer, maxDictSize,
                                                              srcBuffer, sampleSizes, fs.nbSamples,
                                                              fastCoverParams);
              if (!FUNC10(dictSize)) {
                unsigned splitPercentage = (unsigned)(fastCoverParams->splitPoint * 100);
                FUNC0(2, "k=%u\nd=%u\nf=%u\nsteps=%u\nsplit=%u\naccel=%u\n", fastCoverParams->k,
                            fastCoverParams->d, fastCoverParams->f, fastCoverParams->steps, splitPercentage,
                            fastCoverParams->accel);
              }
            } else {
              dictSize = FUNC14(dictBuffer, maxDictSize, srcBuffer,
                                                        sampleSizes, fs.nbSamples, *fastCoverParams);
            }
        }
        if (FUNC10(dictSize)) {
            FUNC0(1, "dictionary training failed : %s \n", FUNC9(dictSize));   /* should not happen */
            result = 1;
            goto _cleanup;
        }
        /* save dict */
        FUNC0(2, "Save dictionary of size %u into file %s \n", (unsigned)dictSize, dictFileName);
        FUNC5(dictFileName, dictBuffer, dictSize);
    }

    /* clean up */
_cleanup:
    FUNC17(srcBuffer);
    FUNC17(sampleSizes);
    FUNC17(dictBuffer);
    return result;
}