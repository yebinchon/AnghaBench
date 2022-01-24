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
typedef  scalar_t__ time_t ;

/* Variables and functions */
 unsigned long ULONG_MAX ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,unsigned long,unsigned long,...) ; 
 scalar_t__ FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__*) ; 
 char* FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC7(unsigned long start_lineno, unsigned long current_lineno,
    unsigned long end_lineno)
{
	static time_t time_start, time_prev;
	time_t time_now, elapsed;
	unsigned long num_to_process, processed, remaining, percent, eta;
	double time_per_line;
	char *eta_str;

	time_now = FUNC4();
	if (time_start == 0) {
		time_start = time_prev = time_now;
		return;
	}
	/* print progress after 1m then once per 5m */
	if (time_now - time_prev < 5 * 60)
		return;
	time_prev = time_now;
	elapsed = time_now - time_start;
	processed = current_lineno - start_lineno;
	remaining = end_lineno - current_lineno;
	num_to_process = end_lineno - start_lineno;
	time_per_line = (double)elapsed / processed;
	/* if we don't know how many we're processing just report count+time */
	FUNC5(&time_now);
	if (end_lineno == ULONG_MAX) {
		FUNC3("%.24s processed %lu in %s", FUNC0(&time_now),
		    processed, FUNC1(elapsed));
		return;
	}
	percent = 100 * processed / num_to_process;
	eta = time_per_line * remaining;
	eta_str = FUNC6(FUNC1(eta));
	FUNC3("%.24s processed %lu of %lu (%lu%%) in %s, ETA %s",
	    FUNC0(&time_now), processed, num_to_process, percent,
	    FUNC1(elapsed), eta_str);
	FUNC2(eta_str);
}