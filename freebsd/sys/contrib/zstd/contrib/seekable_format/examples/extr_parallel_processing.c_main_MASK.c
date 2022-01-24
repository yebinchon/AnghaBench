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
 int FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC2 (char const* const,int const) ; 

int FUNC3(int argc, const char** argv)
{
    const char* const exeName = argv[0];

    if (argc!=3) {
        FUNC1(stderr, "wrong arguments\n");
        FUNC1(stderr, "usage:\n");
        FUNC1(stderr, "%s FILE NB_THREADS\n", exeName);
        return 1;
    }

    {
        const char* const inFilename = argv[1];
        int const nbThreads = FUNC0(argv[2]);
        FUNC2(inFilename, nbThreads);
    }

    return 0;
}