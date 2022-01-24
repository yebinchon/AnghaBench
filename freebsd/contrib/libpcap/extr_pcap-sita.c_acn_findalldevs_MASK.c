#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ find_fd; scalar_t__ len; scalar_t__ ip; } ;
typedef  TYPE_1__ unit_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FIND ; 
 int MAX_CHASSIS ; 
 int MAX_GEOSLOT ; 
 int /*<<< orphan*/  FUNC2 (int,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (scalar_t__,char*) ; 
 scalar_t__ max_fs ; 
 scalar_t__ FUNC4 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (char*) ; 
 int /*<<< orphan*/  readfds ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,int,unsigned char*) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 TYPE_1__** units ; 
 int /*<<< orphan*/  FUNC8 () ; 

int FUNC9(char *errbuf) {								/* returns: -1 = error, 0 = OK */
	int		chassis, geoslot;
	unit_t	*u;

	FUNC1(&readfds);
	max_fs = 0;
	for (chassis = 0; chassis <= MAX_CHASSIS; chassis++) {
		for (geoslot = 0; geoslot <= MAX_GEOSLOT; geoslot++) {
			u = &units[chassis][geoslot];
			if (u->ip && (FUNC4(u, FIND))) {			/* connect to the remote IOP */
				FUNC6(u->find_fd, 1, (unsigned char *)"\0");
				if (FUNC3(u->find_fd, errbuf))
					FUNC2(chassis, geoslot, FIND);
				else {
					if (u->find_fd > max_fs)
						max_fs = u->find_fd;								/* remember the highest number currently in use */
					FUNC0(u->find_fd, &readfds);						/* we are going to want to read this guy's response to */
					u->len = 0;
					FUNC6(u->find_fd, 1, (unsigned char *)"Q");		/* this interface query request */
				}
			}
		}
	}
	FUNC8();
	if (FUNC5(errbuf))
		return -1;
	FUNC7();
	return 0;
}