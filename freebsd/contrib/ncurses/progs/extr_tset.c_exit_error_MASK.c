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
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  STDERR_FILENO ; 
 scalar_t__ can_restore ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  original ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void
FUNC4(void)
{
    if (can_restore)
	FUNC1(STDERR_FILENO, &original);
    (void) FUNC3(stderr, "\n");
    FUNC2(stderr);
    FUNC0(EXIT_FAILURE);
    /* NOTREACHED */
}