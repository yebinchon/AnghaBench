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
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  randombytes_salsa20_implementation ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 () ; 

int
FUNC5(void)
{
    FUNC0();
    FUNC4();
#ifndef __EMSCRIPTEN__
    FUNC1();
#endif
    FUNC2("OK\n");

#ifndef __EMSCRIPTEN__
    FUNC3(&randombytes_salsa20_implementation);
#endif

    return 0;
}