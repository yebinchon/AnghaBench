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
struct stat {int /*<<< orphan*/  st_mode; } ;
struct TYPE_2__ {int fd; scalar_t__ sent; } ;

/* Variables and functions */
 int SLAVES ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int,struct stat*) ; 
 scalar_t__ host ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 scalar_t__ pipeout ; 
 int /*<<< orphan*/ * popenfp ; 
 scalar_t__ popenout ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  read ; 
 int /*<<< orphan*/  FUNC10 () ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* slaves ; 
 int /*<<< orphan*/  FUNC12 (int) ; 
 int /*<<< orphan*/  tape ; 
 int tapefd ; 
 scalar_t__ FUNC13 (int*) ; 
 int writesize ; 

void
FUNC14(void)
{
	struct stat sb;
	int f;
	int got;

	for (f = 0; f < SLAVES; f++) {
		/*
		 * Drain the results, but unlike EOT we DO (or should) care
		 * what the return values were, since if we detect EOT after
		 * we think we've written the last blocks to the tape anyway,
		 * we have to replay those blocks with rollforward.
		 *
		 * fixme: punt for now.
		 */
		if (slaves[f].sent) {
			if (FUNC1(read, slaves[f].fd, (char *)&got, sizeof got)
			    != sizeof got) {
				FUNC8("  DUMP: error reading command pipe in master");
				FUNC3(0);
			}
			slaves[f].sent = 0;
			if (got != writesize) {
				FUNC5("EOT detected in last 2 tape records!\n");
				FUNC5("Use a longer tape, decrease the size estimate\n");
				FUNC9("or use no size estimate at all.\n");
			}
		}
		(void) FUNC2(slaves[f].fd);
	}
	while (FUNC13((int *)NULL) >= 0)	/* wait for any signals from slaves */
		/* void */;

	if (pipeout)
		return;

	FUNC5("Closing %s\n", tape);

	if (popenout) {
		tapefd = -1;
		(void)FUNC7(popenfp);
		popenfp = NULL;
		return;
	}
#ifdef RDUMP
	if (host) {
		rmtclose();
		while (rmtopen(tape, 0) < 0)
			sleep(10);
		rmtclose();
		return;
	}
#endif
	if (FUNC4(tapefd, &sb) == 0 && FUNC0(sb.st_mode)) {
		(void)FUNC2(tapefd);
		return;
	}
	(void) FUNC2(tapefd);
	while ((f = FUNC6(tape, 0)) < 0)
		FUNC12 (10);
	(void) FUNC2(f);
}