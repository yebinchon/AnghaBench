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
 size_t FUNC0 (int,size_t) ; 
 unsigned int FUNC1 (void const*,size_t const,int /*<<< orphan*/ ) ; 
 size_t FUNC2 (void*,size_t,void const*,size_t,int const) ; 
 size_t FUNC3 (void*,size_t,void*,size_t const) ; 
 char* FUNC4 (size_t const) ; 
 scalar_t__ FUNC5 (size_t const) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static size_t FUNC7(void* resultBuff, size_t resultBuffCapacity,
                            void* compressedBuff, size_t compressedBuffCapacity,
                      const void* srcBuff, size_t srcBuffSize)
{
    static const int maxClevel = 19;
    size_t const hashLength = FUNC0(128, srcBuffSize);
    unsigned const h32 = FUNC1(srcBuff, hashLength, 0);
    int const cLevel = h32 % maxClevel;
    size_t const cSize = FUNC2(compressedBuff, compressedBuffCapacity, srcBuff, srcBuffSize, cLevel);
    if (FUNC5(cSize)) {
        FUNC6(stderr, "Compression error : %s \n", FUNC4(cSize));
        return cSize;
    }
    return FUNC3(resultBuff, resultBuffCapacity, compressedBuff, cSize);
}