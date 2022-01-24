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
 int /*<<< orphan*/  LOG_ERR ; 
 int /*<<< orphan*/  LOG_NOTICE ; 
 int /*<<< orphan*/  SIGINT ; 
 int /*<<< orphan*/  SIGTERM ; 
 int /*<<< orphan*/  SIGUSR1 ; 
 int /*<<< orphan*/  SIGUSR2 ; 
 int /*<<< orphan*/  SIGWINCH ; 
 int /*<<< orphan*/  _PATH_HALT ; 
 int /*<<< orphan*/  _PATH_REBOOT ; 
 scalar_t__ docycle ; 
 scalar_t__ dohalt ; 
 scalar_t__ dopower ; 
 scalar_t__ doreboot ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char*,char*,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ killflg ; 
 int /*<<< orphan*/  mbuf ; 
 int /*<<< orphan*/ * nosync ; 
 int /*<<< orphan*/  oflag ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  whom ; 

__attribute__((used)) static void
FUNC7(void)
{
	char *empty_environ[] = { NULL };

	FUNC5(LOG_NOTICE, "%s by %s: %s",
	    doreboot ? "reboot" : dohalt ? "halt" : dopower ? "power-down" :
	    docycle ? "power-cycle" : "shutdown", whom, mbuf);

	(void)FUNC4("\r\nSystem shutdown time has arrived\007\007\r\n");
	if (killflg) {
		(void)FUNC4("\rbut you'll have to do it yourself\r\n");
		FUNC1(0);
	}
#ifdef DEBUG
	if (doreboot)
		(void)printf("reboot");
	else if (docycle)
		(void)printf("power-cycle");
	else if (dohalt)
		(void)printf("halt");
	else if (dopower)
		(void)printf("power-down");
	if (nosync != NULL)
		(void)printf(" no sync");
	(void)printf("\nkill -HUP 1\n");
#else
	if (!oflag) {
		(void)FUNC3(1, doreboot ? SIGINT :	/* reboot */
			      dohalt ? SIGUSR1 :	/* halt */
			      dopower ? SIGUSR2 :	/* power-down */
			      docycle ? SIGWINCH :	/* power-cycle */
			      SIGTERM);			/* single-user */
	} else {
		if (doreboot) {
			FUNC0(_PATH_REBOOT, "reboot", "-l", nosync, 
				(char *)NULL, empty_environ);
			FUNC5(LOG_ERR, "shutdown: can't exec %s: %m.",
				_PATH_REBOOT);
			FUNC6(_PATH_REBOOT);
		}
		else if (dohalt) {
			FUNC0(_PATH_HALT, "halt", "-l", nosync,
				(char *)NULL, empty_environ);
			FUNC5(LOG_ERR, "shutdown: can't exec %s: %m.",
				_PATH_HALT);
			FUNC6(_PATH_HALT);
		}
		else if (dopower) {
			FUNC0(_PATH_HALT, "halt", "-l", "-p", nosync,
				(char *)NULL, empty_environ);
			FUNC5(LOG_ERR, "shutdown: can't exec %s: %m.",
				_PATH_HALT);
			FUNC6(_PATH_HALT);
		}
		else if (docycle) {
			FUNC0(_PATH_HALT, "halt", "-l", "-c", nosync,
				(char *)NULL, empty_environ);
			FUNC5(LOG_ERR, "shutdown: can't exec %s: %m.",
				_PATH_HALT);
			FUNC6(_PATH_HALT);
		}
		(void)FUNC3(1, SIGTERM);		/* to single-user */
	}
#endif
	FUNC2(0);
}