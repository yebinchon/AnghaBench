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
struct TYPE_3__ {scalar_t__ pid; int fd; scalar_t__ sent; } ;

/* Variables and functions */
 int /*<<< orphan*/  AF_UNIX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SIGINT ; 
 int /*<<< orphan*/  SIGPIPE ; 
 int /*<<< orphan*/  SIGTERM ; 
 int /*<<< orphan*/  SIGUSR1 ; 
 int /*<<< orphan*/  SIGUSR2 ; 
 int /*<<< orphan*/  SIG_IGN ; 
 int SLAVES ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 int /*<<< orphan*/  X_FINOK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,char*,int) ; 
 int caught ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 
 int /*<<< orphan*/  dumpabort ; 
 int /*<<< orphan*/  errno ; 
 scalar_t__ FUNC4 () ; 
 scalar_t__ FUNC5 () ; 
 scalar_t__ master ; 
 int /*<<< orphan*/  proceed ; 
 int /*<<< orphan*/  FUNC6 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sigpipe ; 
 TYPE_1__* slaves ; 
 TYPE_1__* slp ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tperror ; 
 int /*<<< orphan*/  write ; 

void
FUNC10(void)
{
	int cmd[2];
	int i, j;

	master = FUNC5();

	FUNC7(SIGTERM, dumpabort);  /* Slave sends SIGTERM on dumpabort() */
	FUNC7(SIGPIPE, sigpipe);
	FUNC7(SIGUSR1, tperror);    /* Slave sends SIGUSR1 on tape errors */
	FUNC7(SIGUSR2, proceed);    /* Slave sends SIGUSR2 to next slave */

	for (i = 0; i < SLAVES; i++) {
		if (i == slp - &slaves[0]) {
			caught = 1;
		} else {
			caught = 0;
		}

		if (FUNC8(AF_UNIX, SOCK_STREAM, 0, cmd) < 0 ||
		    (slaves[i].pid = FUNC4()) < 0)
			FUNC6("too many slaves, %d (recompile smaller): %s\n",
			    i, FUNC9(errno));

		slaves[i].fd = cmd[1];
		slaves[i].sent = 0;
		if (slaves[i].pid == 0) { 	    /* Slave starts up here */
			for (j = 0; j <= i; j++)
			        (void) FUNC2(slaves[j].fd);
			FUNC7(SIGINT, SIG_IGN);    /* Master handles this */
			FUNC3(cmd[0], i);
			FUNC0(X_FINOK);
		}
	}

	for (i = 0; i < SLAVES; i++)
		(void) FUNC1(write, slaves[i].fd,
			      (char *) &slaves[(i + 1) % SLAVES].pid,
		              sizeof slaves[0].pid);

	master = 0;
}