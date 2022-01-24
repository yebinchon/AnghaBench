#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zdictParams ;
struct TYPE_4__ {int notificationLevel; int /*<<< orphan*/  dictID; } ;
typedef  TYPE_1__ ZDICT_params_t ;
typedef  int /*<<< orphan*/  U32 ;
typedef  scalar_t__ BYTE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 size_t FUNC1 (size_t,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,void*,size_t const) ; 
 size_t const ZDICT_CONTENTSIZE_MIN ; 
 size_t ZDICT_DICTSIZE_MIN ; 
 size_t FUNC3 (scalar_t__*,size_t,scalar_t__* const,size_t const,scalar_t__* const,size_t*,unsigned int const,TYPE_1__) ; 
 int /*<<< orphan*/  FUNC4 (size_t) ; 
 scalar_t__ FUNC5 (size_t) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__* const) ; 
 scalar_t__* FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC9(U32 dictID, U32 seed, size_t dictSize, BYTE* fullDict)
{
    /* allocate space for samples */
    int ret = 0;
    unsigned const numSamples = 4;
    size_t sampleSizes[4];
    BYTE* const samples = FUNC7(5000*sizeof(BYTE));
    if (samples == NULL) {
        FUNC0("Error: could not allocate space for samples\n");
        return 1;
    }

    /* generate samples */
    {   unsigned literalValue = 1;
        unsigned samplesPos = 0;
        size_t currSize = 1;
        while (literalValue <= 4) {
            sampleSizes[literalValue - 1] = currSize;
            {   size_t k;
                for (k = 0; k < currSize; k++) {
                    *(samples + (samplesPos++)) = (BYTE)literalValue;
            }   }
            literalValue++;
            currSize *= 16;
    }   }

    {   size_t dictWriteSize = 0;
        ZDICT_params_t zdictParams;
        size_t const headerSize = FUNC1(dictSize/4, 256);
        size_t const dictContentSize = dictSize - headerSize;
        BYTE* const dictContent = fullDict + headerSize;
        if (dictContentSize < ZDICT_CONTENTSIZE_MIN || dictSize < ZDICT_DICTSIZE_MIN) {
            FUNC0("Error: dictionary size is too small\n");
            ret = 1;
            goto exitGenRandomDict;
        }

        /* init dictionary params */
        FUNC8(&zdictParams, 0, sizeof(zdictParams));
        zdictParams.dictID = dictID;
        zdictParams.notificationLevel = 1;

        /* fill in dictionary content */
        FUNC2(&seed, (void*)dictContent, dictContentSize);

        /* finalize dictionary with random samples */
        dictWriteSize = FUNC3(fullDict, dictSize,
                                    dictContent, dictContentSize,
                                    samples, sampleSizes, numSamples,
                                    zdictParams);

        if (FUNC5(dictWriteSize)) {
            FUNC0("Could not finalize dictionary: %s\n", FUNC4(dictWriteSize));
            ret = 1;
        }
    }

exitGenRandomDict:
    FUNC6(samples);
    return ret;
}