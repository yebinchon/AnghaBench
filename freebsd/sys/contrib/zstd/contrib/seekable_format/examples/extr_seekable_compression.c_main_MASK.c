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
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (char const* const,char* const,int,unsigned int const) ; 
 char* FUNC2 (char const* const) ; 
 int /*<<< orphan*/  FUNC3 (char* const) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 

int FUNC5(int argc, const char** argv) {
    const char* const exeName = argv[0];
    if (argc!=3) {
        FUNC4("wrong arguments\n");
        FUNC4("usage:\n");
        FUNC4("%s FILE FRAME_SIZE\n", exeName);
        return 1;
    }

    {   const char* const inFileName = argv[1];
        unsigned const frameSize = (unsigned)FUNC0(argv[2]);

        char* const outFileName = FUNC2(inFileName);
        FUNC1(inFileName, outFileName, 5, frameSize);
        FUNC3(outFileName);
    }

    return 0;
}