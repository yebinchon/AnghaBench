#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  nbSamples; int /*<<< orphan*/  samplesSizes; int /*<<< orphan*/  srcBuffer; } ;
typedef  TYPE_2__ sampleInfo ;
struct TYPE_8__ {unsigned int notificationLevel; } ;
struct TYPE_10__ {int splitPoint; int /*<<< orphan*/  steps; int /*<<< orphan*/  f; int /*<<< orphan*/  d; int /*<<< orphan*/  k; TYPE_1__ zParams; } ;
typedef  TYPE_3__ ZDICT_fastCover_params_t ;
typedef  int /*<<< orphan*/  U32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  FUNC2 (size_t) ; 
 scalar_t__ FUNC3 (size_t) ; 
 size_t FUNC4 (void* const,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_3__*) ; 
 size_t FUNC5 (void* const,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_3__) ; 
 int /*<<< orphan*/  FUNC6 (void* const) ; 
 void* FUNC7 (unsigned int) ; 
 int /*<<< orphan*/  FUNC8 (char const*,void* const,size_t) ; 

int FUNC9(const char* dictFileName, sampleInfo *info,
                          unsigned maxDictSize,
                          ZDICT_fastCover_params_t *params) {
    unsigned const displayLevel = params->zParams.notificationLevel;
    void* const dictBuffer = FUNC7(maxDictSize);

    int result = 0;

    /* Checks */
    if (!dictBuffer)
        FUNC1(12, "not enough memory for trainFromFiles");   /* should not happen */

    {   size_t dictSize;
        /* Run the optimize version if either k or d is not provided */
        if (!params->d || !params->k) {
          dictSize = FUNC4(dictBuffer, maxDictSize, info->srcBuffer,
                                               info->samplesSizes, info->nbSamples, params);
        } else {
          dictSize = FUNC5(dictBuffer, maxDictSize, info->srcBuffer,
                                               info->samplesSizes, info->nbSamples, *params);
        }
        FUNC0(2, "k=%u\nd=%u\nf=%u\nsteps=%u\nsplit=%u\n", params->k, params->d, params->f, params->steps, (unsigned)(params->splitPoint*100));
        if (FUNC3(dictSize)) {
            FUNC0(1, "dictionary training failed : %s \n", FUNC2(dictSize));   /* should not happen */
            result = 1;
            goto _done;
        }
        /* save dict */
        FUNC0(2, "Save dictionary of size %u into file %s \n", (U32)dictSize, dictFileName);
        FUNC8(dictFileName, dictBuffer, dictSize);
    }

    /* clean up */
_done:
    FUNC6(dictBuffer);
    return result;
}