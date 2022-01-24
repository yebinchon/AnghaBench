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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ * const) ; 
 int /*<<< orphan*/ * FUNC2 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,char const*) ; 
 size_t FUNC4 (void*,int,size_t,int /*<<< orphan*/ * const) ; 
 scalar_t__ FUNC5 (char const*) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void FUNC6(void* buffer, const char* fileName, size_t fileSize)
{
    FILE* const f = FUNC2(fileName, "rb");
    if (FUNC5(fileName)) {
        FUNC3(stderr, "Ignoring %s directory \n", fileName);
        FUNC0(2);
    }
    if (f==NULL) {
        FUNC3(stderr, "Impossible to open %s \n", fileName);
        FUNC0(3);
    }
    {   size_t const readSize = FUNC4(buffer, 1, fileSize, f);
        if (readSize != fileSize) {
            FUNC3(stderr, "Error reading %s \n", fileName);
            FUNC0(5);
    }   }
    FUNC1(f);
}