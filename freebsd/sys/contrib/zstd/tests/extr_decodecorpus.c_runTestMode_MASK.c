#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  scalar_t__ genType_e ;
typedef  int /*<<< orphan*/  UTIL_time_t ;
typedef  scalar_t__ U64 ;
typedef  scalar_t__ U32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char*,unsigned int,...) ; 
 unsigned int const SEC_TO_MICRO ; 
 scalar_t__ const FUNC2 (int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ gt_frame ; 
 int FUNC4 (scalar_t__*) ; 
 int FUNC5 (scalar_t__*) ; 

__attribute__((used)) static int FUNC6(U32 seed, unsigned numFiles, unsigned const testDurationS,
                       genType_e genType)
{
    unsigned fnum;

    UTIL_time_t const startClock = FUNC3();
    U64 const maxClockSpan = testDurationS * SEC_TO_MICRO;

    if (numFiles == 0 && !testDurationS) numFiles = 1;

    FUNC0("seed: %u\n", (unsigned)seed);

    for (fnum = 0; fnum < numFiles || FUNC2(startClock) < maxClockSpan; fnum++) {
        if (fnum < numFiles)
            FUNC1("\r%u/%u        ", fnum, numFiles);
        else
            FUNC1("\r%u           ", fnum);

        {   int const ret = (genType == gt_frame) ?
                            FUNC5(&seed) :
                            FUNC4(&seed);
            if (ret) return ret;
        }
    }

    FUNC0("\r%u tests completed: ", fnum);
    FUNC0("OK\n");

    return 0;
}