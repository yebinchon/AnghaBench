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
 int /*<<< orphan*/  FUNC1 (char*,...) ; 

int FUNC2(int argc, const char** argv)
{
    const char* const exeName = argv[0];

    if (argc!=2) {
        FUNC1("wrong arguments\n");
        FUNC1("usage:\n");
        FUNC1("%s FILE\n", exeName);
        return 1;
    }

    FUNC0(argv[1]);

    FUNC1("%s correctly decoded (in memory). \n", argv[1]);

    return 0;
}