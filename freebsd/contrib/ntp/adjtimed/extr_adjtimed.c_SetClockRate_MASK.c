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
typedef  int /*<<< orphan*/  rate ;
typedef  int /*<<< orphan*/  off_t ;
typedef  int /*<<< orphan*/  caddr_t ;
struct TYPE_2__ {scalar_t__ n_value; } ;

/* Variables and functions */
 int /*<<< orphan*/  LOG_INFO ; 
 int /*<<< orphan*/  SIGALRM ; 
 long default_rate ; 
 int /*<<< orphan*/  kmem ; 
 long FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,long,long) ; 
 TYPE_1__* nl ; 
 int /*<<< orphan*/  FUNC2 (char*,long,long) ; 
 long FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (long) ; 
 int sysdebug ; 
 long tick_rate ; 
 int verbose ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

int
FUNC7(
	long rate
	)
{
	long mask;

	if (FUNC0(kmem, (off_t)nl[0].n_value, 0) == -1L)
	    return (-1);

	mask = FUNC3(FUNC4(SIGALRM));

	if (FUNC6(kmem, (caddr_t)&rate, sizeof(rate)) != sizeof(rate)) {
		FUNC5(mask);
		return (-1);
	}

	FUNC5(mask);

	if (rate != default_rate) {
		if (verbose > 3) {
			FUNC2("adjtimed: clock rate (%lu) %ldus/s\n", rate,
			       (rate - default_rate) * tick_rate);
		}
		if (sysdebug > 3) {
			FUNC1(LOG_INFO, "clock rate (%lu) %ldus/s", rate,
				(rate - default_rate) * tick_rate);
		}
	}

	return (0);
}