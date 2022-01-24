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
typedef  int /*<<< orphan*/  Char ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int GettingInput ; 
 scalar_t__ NeedsRedraw ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC6 (char) ; 

__attribute__((used)) static void
FUNC7(Char *str)
{
    Char *cmd[2];

    FUNC6('\n');	/* Start on a clean line */

    cmd[0] = str;
    cmd[1] = NULL;

    (void) FUNC2();
    GettingInput = 0;

    FUNC5(cmd);

    (void) FUNC3();
    GettingInput = 1;

    FUNC1();
    FUNC0();
    NeedsRedraw = 0;
    FUNC4();
}