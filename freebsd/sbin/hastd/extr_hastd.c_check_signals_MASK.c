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
struct timespec {scalar_t__ tv_nsec; scalar_t__ tv_sec; } ;
typedef  int /*<<< orphan*/  sigset_t ;
struct TYPE_2__ {int /*<<< orphan*/  hc_controlconn; } ;

/* Variables and functions */
 int /*<<< orphan*/  EX_OK ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
#define  SIGCHLD 131 
#define  SIGHUP 130 
#define  SIGINT 129 
#define  SIGTERM 128 
 TYPE_1__* cfg ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 int sigexit_received ; 
 int FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct timespec*) ; 
 int /*<<< orphan*/  FUNC9 () ; 

__attribute__((used)) static void
FUNC10(void)
{
	struct timespec sigtimeout;
	sigset_t mask;
	int signo;

	sigtimeout.tv_sec = 0;
	sigtimeout.tv_nsec = 0;

	FUNC1(FUNC7(&mask) == 0);
	FUNC1(FUNC6(&mask, SIGHUP) == 0);
	FUNC1(FUNC6(&mask, SIGINT) == 0);
	FUNC1(FUNC6(&mask, SIGTERM) == 0);
	FUNC1(FUNC6(&mask, SIGCHLD) == 0);

	while ((signo = FUNC8(&mask, NULL, &sigtimeout)) != -1) {
		switch (signo) {
		case SIGINT:
		case SIGTERM:
			sigexit_received = true;
			FUNC9();
			FUNC5(cfg->hc_controlconn);
			FUNC3(EX_OK);
			break;
		case SIGCHLD:
			FUNC2();
			break;
		case SIGHUP:
			FUNC4();
			break;
		default:
			FUNC0("Unexpected signal (%d).", signo);
		}
	}
}