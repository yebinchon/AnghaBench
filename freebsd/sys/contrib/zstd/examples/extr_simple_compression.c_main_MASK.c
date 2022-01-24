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
 int /*<<< orphan*/  FUNC0 (char const* const,char* const) ; 
 char* FUNC1 (char const* const) ; 
 int /*<<< orphan*/  FUNC2 (char* const) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 

int FUNC4(int argc, const char** argv)
{
    const char* const exeName = argv[0];

    if (argc!=2) {
        FUNC3("wrong arguments\n");
        FUNC3("usage:\n");
        FUNC3("%s FILE\n", exeName);
        return 1;
    }

    const char* const inFilename = argv[1];

    char* const outFilename = FUNC1(inFilename);
    FUNC0(inFilename, outFilename);
    FUNC2(outFilename);
    return 0;
}