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
typedef  void* off_t ;

/* Variables and functions */
 int /*<<< orphan*/  SIGALRM ; 
 int /*<<< orphan*/  SIGWINCH ; 
 int /*<<< orphan*/  UPDATE_INTERVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ bytes_per_second ; 
 scalar_t__ FUNC1 () ; 
 void** counter ; 
 scalar_t__ cur_pos ; 
 void* end_pos ; 
 char const* file ; 
 int /*<<< orphan*/  last_update ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  sig_winch ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ stalled ; 
 int /*<<< orphan*/  start ; 
 void* start_pos ; 
 int /*<<< orphan*/  update_progress_meter ; 

void
FUNC6(const char *f, off_t filesize, off_t *ctr)
{
	start = last_update = FUNC2();
	file = f;
	start_pos = *ctr;
	end_pos = filesize;
	cur_pos = 0;
	counter = ctr;
	stalled = 0;
	bytes_per_second = 0;

	FUNC4();
	if (FUNC1())
		FUNC3();

	FUNC5(SIGALRM, update_progress_meter);
	FUNC5(SIGWINCH, sig_winch);
	FUNC0(UPDATE_INTERVAL);
}