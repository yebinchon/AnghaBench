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
typedef  int ses_encstat ;
typedef  int /*<<< orphan*/  caddr_t ;

/* Variables and functions */
 int BADSTAT ; 
 int /*<<< orphan*/  O_RDWR ; 
 int /*<<< orphan*/  SESIOC_GETENCSTAT ; 
 int /*<<< orphan*/  SESIOC_SETENCSTAT ; 
 int SES_ENCSTAT_CRITICAL ; 
 int SES_ENCSTAT_NONCRITICAL ; 
 int SES_ENCSTAT_UNRECOV ; 
 int FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (void*,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ FUNC4 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int* FUNC5 (int) ; 
 int FUNC6 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (char) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  stdout ; 
 char* FUNC10 (int /*<<< orphan*/ ) ; 

int
FUNC11(int a, char **v)
{
	int fd, delay, dev;
	ses_encstat stat, *carray;

	if (a < 3) {
		FUNC3(stderr, "usage: %s polling-interval device "
		    "[ device ... ]\n", *v);
		return (1);
	}
	delay = FUNC0(v[1]);
	carray = FUNC5(a);
	if (carray == NULL) {
		FUNC7("malloc");
		return (1);
	}
	FUNC1((void *)carray, a);

	for (;;) {
		for (dev = 2; dev < a; dev++) {
			fd = FUNC6(v[dev], O_RDWR);
			if (fd < 0) {
				FUNC7(v[dev]);
				continue;
			}
			/*
			 * First clear any enclosure status, in case it is
			 * a latched status.
			 */
			stat = 0;
			if (FUNC4(fd, SESIOC_SETENCSTAT, (caddr_t) &stat) < 0) {
				FUNC3(stderr, "%s: SESIOC_SETENCSTAT1: %s\n",
				    v[dev], FUNC10(errno));
				(void) FUNC2(fd);
				continue;
			}
			/*
			 * Now get the actual current enclosure status.
			 */
			if (FUNC4(fd, SESIOC_GETENCSTAT, (caddr_t) &stat) < 0) {
				FUNC3(stderr, "%s: SESIOC_GETENCSTAT: %s\n",
				    v[dev], FUNC10(errno));
				(void) FUNC2(fd);
				continue;
			}

			if ((stat & BADSTAT) == 0) {
				if (carray[dev]) {
					FUNC3(stdout, "%s: Clearing CRITICAL "
					    "condition\n", v[dev]);
					carray[dev] = 0;
				}
				(void) FUNC2(fd);
				continue;
			}
			carray[dev] = 1;
			FUNC3(stdout, "%s: Setting CRITICAL from:", v[dev]);
			if (stat & SES_ENCSTAT_UNRECOV)
				FUNC3(stdout, " UNRECOVERABLE");
		
			if (stat & SES_ENCSTAT_CRITICAL)
				FUNC3(stdout, " CRITICAL");
		
			if (stat & SES_ENCSTAT_NONCRITICAL)
				FUNC3(stdout, " NONCRITICAL");
			FUNC8('\n');
			stat = SES_ENCSTAT_CRITICAL;
			if (FUNC4(fd, SESIOC_SETENCSTAT, (caddr_t) &stat) < 0) {
				FUNC3(stderr, "%s: SESIOC_SETENCSTAT 2: %s\n",
				    v[dev], FUNC10(errno));
			}
			(void) FUNC2(fd);
		}
		FUNC9(delay);
	}
	/* NOTREACHED */
}