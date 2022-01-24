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

/* Variables and functions */
 size_t FUNC0 (size_t) ; 
 char* FUNC1 (size_t const) ; 
 scalar_t__ FUNC2 (size_t const) ; 
 size_t FUNC3 (void*,size_t const,void*,size_t const,void const*,size_t) ; 
 size_t FUNC4 (void const*,void*,size_t) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC8 (void*) ; 
 void* FUNC9 (size_t const) ; 
 size_t FUNC10 (void*,size_t const,void*,size_t const,void const*,size_t) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void FUNC11(const void* srcBuff, size_t srcBuffSize, int testCCtxParams)
{
    size_t const cBuffSize = FUNC0(srcBuffSize);
    void* cBuff = FUNC9(cBuffSize);
    void* rBuff = FUNC9(cBuffSize);

    if (!cBuff || !rBuff) {
        FUNC7(stderr, "not enough memory ! \n");
        FUNC6 (1);
    }

    {   size_t const result = testCCtxParams ?
                  FUNC3(rBuff, cBuffSize, cBuff, cBuffSize, srcBuff, srcBuffSize)
                : FUNC10(rBuff, cBuffSize, cBuff, cBuffSize, srcBuff, srcBuffSize);
        if (FUNC2(result)) {
            FUNC7(stderr, "roundTripTest error : %s \n", FUNC1(result));
            FUNC5(1);
        }
        if (result != srcBuffSize) {
            FUNC7(stderr, "Incorrect regenerated size : %u != %u\n", (unsigned)result, (unsigned)srcBuffSize);
            FUNC5(1);
        }
        if (FUNC4(srcBuff, rBuff, srcBuffSize) != srcBuffSize) {
            FUNC7(stderr, "Silent decoding corruption !!!");
            FUNC5(1);
        }
    }

    FUNC8(cBuff);
    FUNC8(rBuff);
}