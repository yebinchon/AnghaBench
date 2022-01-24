#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ n_type; } ;

/* Variables and functions */
 int DEFAULT_RATE ; 
 int FUNC0 () ; 
 int /*<<< orphan*/  LOG_ERR ; 
 int MILLION ; 
 int /*<<< orphan*/  O_RDWR ; 
 int TICK_ADJ ; 
 int UNKNOWN_RATE ; 
 int default_rate ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int kmem ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 TYPE_1__* nl ; 
 int /*<<< orphan*/  FUNC4 (char*,TYPE_1__*) ; 
 int FUNC5 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int slew_rate ; 
 int /*<<< orphan*/  stderr ; 
 int tick_rate ; 

int
FUNC7(void)
{
	if ((kmem = FUNC5("/dev/kmem", O_RDWR)) == -1) {
		FUNC3(LOG_ERR, "open(/dev/kmem): %m");
		FUNC6("adjtimed: open(/dev/kmem)");
		return (-1);
	}

	FUNC4("/hp-ux", nl);

	if (nl[0].n_type == 0) {
		FUNC2("adjtimed: /hp-ux has no symbol table\n", stderr);
		FUNC3(LOG_ERR, "/hp-ux has no symbol table");
		return (-1);
	}
	/*
	 * Set the default to the system's original value
	 */
	default_rate = FUNC0();
	if (default_rate == UNKNOWN_RATE) default_rate = DEFAULT_RATE;
	tick_rate = (MILLION / default_rate);
	slew_rate = TICK_ADJ * tick_rate;
	FUNC1(stderr,"default_rate=%d, tick_rate=%d, slew_rate=%d\n",default_rate,tick_rate,slew_rate);

	return (0);
}