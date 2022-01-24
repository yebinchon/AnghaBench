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
 int /*<<< orphan*/  SIGALRM ; 
 int /*<<< orphan*/  UPDATE_INTERVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 () ; 
 int errno ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,void (*) (int)) ; 
 scalar_t__ win_resized ; 

__attribute__((used)) static void
FUNC5(int ignore)
{
	int save_errno;

	save_errno = errno;

	if (win_resized) {
		FUNC3();
		win_resized = 0;
	}
	if (FUNC1())
		FUNC2();

	FUNC4(SIGALRM, update_progress_meter);
	FUNC0(UPDATE_INTERVAL);
	errno = save_errno;
}