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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char const*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC3 (char const*,char*) ; 

int FUNC4(int argCount, const char** argv) {
    int argNb = 1;
    int testCCtxParams = 0;
    if (argCount < 2) {
        FUNC2(stderr, "Error : no argument : need input file \n");
        FUNC0(9);
    }

    if (!FUNC3(argv[argNb], "--cctxParams")) {
      testCCtxParams = 1;
      argNb++;
    }

    FUNC1(argv[argNb], testCCtxParams);
    FUNC2(stderr, "no pb detected\n");
    return 0;
}