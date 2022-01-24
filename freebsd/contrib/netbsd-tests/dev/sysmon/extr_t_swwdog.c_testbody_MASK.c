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
struct wdog_mode {int wc_count; char* wc_names; int wm_period; int /*<<< orphan*/  wm_mode; int /*<<< orphan*/  wm_name; } ;
struct wdog_conf {int wc_count; char* wc_names; int wm_period; int /*<<< orphan*/  wm_mode; int /*<<< orphan*/  wm_name; } ;
typedef  int pid_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  O_RDWR ; 
 int /*<<< orphan*/  SIGUSR1 ; 
 int /*<<< orphan*/  WDOGIOC_GWDOGS ; 
 int /*<<< orphan*/  WDOGIOC_SMODE ; 
 int /*<<< orphan*/  WDOGIOC_TICKLE ; 
 int /*<<< orphan*/  WDOG_MODE_DISARMED ; 
 int /*<<< orphan*/  WDOG_MODE_ETICKLE ; 
 int WDOG_NAMESIZE ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int,char*) ; 
 int FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int FUNC10 (int,int /*<<< orphan*/ ,...) ; 
 int FUNC11 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sigcount ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,char*,int) ; 
 int tcount ; 
 int /*<<< orphan*/  FUNC15 (int) ; 
 int FUNC16 (int*) ; 

__attribute__((used)) static int
FUNC17(int max)
{
	char wname[WDOG_NAMESIZE];
	struct wdog_conf wc;
	struct wdog_mode wm;
	pid_t p1, p2;
	int status;
	int fd;

	FUNC12(SIGUSR1, sigcount);

	switch ((p1 = FUNC5())) {
	case 0:
		break;
	case -1:
		FUNC3("fork");
		break;
	default:
		p2 = FUNC16(&status);
		FUNC0(p1, p2);
		FUNC0(tcount, max);
		return status;
	}

	FUNC9();

	fd = FUNC11("/dev/watchdog", O_RDWR);
	if (fd == -1)
		FUNC4(1, "open watchdog");

	wc.wc_count = 1;
	wc.wc_names = wname;

	if (FUNC10(fd, WDOGIOC_GWDOGS, &wc) == -1)
		FUNC4(1, "can't fetch watchdog names");

	if (wc.wc_count) {
		FUNC2(wc.wc_count == 1);

		FUNC14(wm.wm_name, wc.wc_names, sizeof(wm.wm_name));
		wm.wm_mode = WDOG_MODE_ETICKLE;
		wm.wm_period = 1;
		if (FUNC10(fd, WDOGIOC_SMODE, &wm) == -1)
			FUNC3("failed to set tickle");

		FUNC15(400000);
		if (max == 1)
			FUNC10(fd, WDOGIOC_TICKLE);
		else {
			wm.wm_mode = WDOG_MODE_DISARMED;
			FUNC10(fd, WDOGIOC_SMODE, &wm);
		}
		FUNC7(FUNC6(), SIGUSR1);

		FUNC13(2);
		FUNC8("staying alive\n");
		FUNC7(FUNC6(), SIGUSR1);
		FUNC1(2);
	}
	/* fail */
	FUNC8("no watchdog registered!\n");
	FUNC1(1);
}