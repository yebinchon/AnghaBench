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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int FUNC3 (char*,char*,unsigned long*,unsigned long*,unsigned long*,unsigned long*) ; 
 int /*<<< orphan*/  stdin ; 

FUNC4()
{
	union { long long q; unsigned long v[2]; } a, b, q, r;
	char buf[300];
	extern long long FUNC5(unsigned long long, unsigned long long,
	    unsigned long long *);

	for (;;) {
		FUNC2("> ");
		if (FUNC1(buf, sizeof buf, stdin) == NULL)
			break;
		if (FUNC3(buf, "%lu:%lu %lu:%lu",
			    &a.v[0], &a.v[1], &b.v[0], &b.v[1]) != 4 &&
		    FUNC3(buf, "0x%lx:%lx 0x%lx:%lx",
			    &a.v[0], &a.v[1], &b.v[0], &b.v[1]) != 4) {
			FUNC2("eh?\n");
			continue;
		}
		q.q = FUNC5(a.q, b.q, &r.q);
		FUNC2("%lx:%lx /%% %lx:%lx => q=%lx:%lx r=%lx:%lx\n",
		    a.v[0], a.v[1], b.v[0], b.v[1],
		    q.v[0], q.v[1], r.v[0], r.v[1]);
		FUNC2("  = %lX%08lX / %lX%08lX => %lX%08lX\n\
  = %lX%08lX %% %lX%08lX => %lX%08lX\n",
		    a.v[0], a.v[1], b.v[0], b.v[1], q.v[0], q.v[1],
		    a.v[0], a.v[1], b.v[0], b.v[1], r.v[0], r.v[1]);
	}
	FUNC0(0);
}