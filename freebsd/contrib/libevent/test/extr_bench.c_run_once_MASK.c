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
struct timeval {int dummy; } ;
typedef  int evutil_socket_t ;
typedef  scalar_t__ ev_intptr_t ;

/* Variables and functions */
 int EVLOOP_NONBLOCK ; 
 int EVLOOP_ONCE ; 
 int EV_PERSIST ; 
 int EV_READ ; 
 int count ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/ * events ; 
 int /*<<< orphan*/  FUNC5 (struct timeval*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct timeval*,struct timeval*,struct timeval*) ; 
 int fired ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int,int) ; 
 long num_active ; 
 long num_pipes ; 
 int /*<<< orphan*/  num_writes ; 
 int* pipes ; 
 int /*<<< orphan*/  read_cb ; 
 int /*<<< orphan*/  FUNC8 (int,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  writes ; 

__attribute__((used)) static struct timeval *
FUNC9(void)
{
	evutil_socket_t *cp, space;
	long i;
	static struct timeval ts, te;

	for (cp = pipes, i = 0; i < num_pipes; i++, cp += 2) {
		if (FUNC2(&events[i]))
			FUNC1(&events[i]);
		FUNC4(&events[i], cp[0], EV_READ | EV_PERSIST, read_cb, (void *)(ev_intptr_t) i);
		FUNC0(&events[i], NULL);
	}

	FUNC3(EVLOOP_ONCE | EVLOOP_NONBLOCK);

	fired = 0;
	space = num_pipes / num_active;
	space = space * 2;
	for (i = 0; i < num_active; i++, fired++)
		(void) FUNC8(pipes[i * space + 1], "e", 1, 0);

	count = 0;
	writes = num_writes;
	{ int xcount = 0;
	FUNC5(&ts, NULL);
	do {
		FUNC3(EVLOOP_ONCE | EVLOOP_NONBLOCK);
		xcount++;
	} while (count != fired);
	FUNC5(&te, NULL);

	if (xcount != count) FUNC7(stderr, "Xcount: %d, Rcount: %d\n", xcount, count);
	}

	FUNC6(&te, &ts, &te);

	return (&te);
}