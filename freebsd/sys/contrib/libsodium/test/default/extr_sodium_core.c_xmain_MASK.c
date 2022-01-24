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
 int /*<<< orphan*/ * misuse_handler ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 

int
FUNC16(void)
{
    FUNC15(NULL);
    FUNC15(misuse_handler);
    FUNC15(NULL);

    FUNC0(FUNC2() == 1);

    (void) FUNC8();
    (void) FUNC11();
    (void) FUNC12();
    (void) FUNC14();
    (void) FUNC13();
    (void) FUNC5();
    (void) FUNC6();
    (void) FUNC7();
    (void) FUNC9();
    (void) FUNC4();
    (void) FUNC10();

    FUNC15(misuse_handler);
#ifndef __EMSCRIPTEN__
    FUNC3();
    FUNC1("Misuse handler returned\n");
#else
    printf("misuse_handler()\n");
#endif

    return 0;
}