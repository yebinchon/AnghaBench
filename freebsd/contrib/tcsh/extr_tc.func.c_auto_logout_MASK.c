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
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  GettingInput ; 
 int /*<<< orphan*/  SHIN ; 
 int /*<<< orphan*/  STRautomatic ; 
 int /*<<< orphan*/  STRlogout ; 
 int /*<<< orphan*/  VAR_READWRITE ; 
 int child ; 
 int do_logout ; 
 scalar_t__ editing ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

__attribute__((used)) static void
FUNC5(void)
{
    FUNC4("auto-logout\n");
    /* Don't leave the tty in raw mode */
    if (editing)
	(void) FUNC0();
    FUNC3(SHIN);
    FUNC2(STRlogout, STRautomatic, VAR_READWRITE);
    child = 1;
#ifdef TESLA
    do_logout = 1;
#endif /* TESLA */
    GettingInput = FALSE; /* make flush() work to write hist files. Huber*/
    FUNC1(NULL, NULL);
}