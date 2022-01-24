#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {unsigned int RepeatCount; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char) ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int FUNC3 () ; 
 TYPE_1__ UnityFixture ; 
 int FUNC4 (int,char const**) ; 
 int /*<<< orphan*/  FUNC5 (unsigned int) ; 

int FUNC6(int argc, const char* argv[], void (*runAllTests)(void))
{
    int result = FUNC4(argc, argv);
    unsigned int r;
    if (result != 0)
        return result;

    for (r = 0; r < UnityFixture.RepeatCount; r++)
    {
        FUNC1(argv[0]);
        FUNC5(r);
        runAllTests();
        FUNC0('\n');
        FUNC2();
    }

    return FUNC3();
}