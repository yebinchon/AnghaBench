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
 int /*<<< orphan*/  STDOUT_FILENO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ cur_pos ; 
 scalar_t__ end_pos ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  vwrite ; 

void
FUNC4(void)
{
	FUNC0(0);

	if (!FUNC2())
		return;

	/* Ensure we complete the progress */
	if (cur_pos != end_pos)
		FUNC3();

	FUNC1(vwrite, STDOUT_FILENO, "\n", 1);
}