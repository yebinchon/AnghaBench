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
typedef  scalar_t__ time_t ;

/* Variables and functions */
 int CMD_ERROR ; 
 int CMD_OK ; 
 int autoboot_tried ; 
 int FUNC0 (int,char**) ; 
 char* command_errmsg ; 
 int FUNC1 () ; 
 char* FUNC2 (char*) ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char**) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (char) ; 
 int FUNC7 (char*,char**,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC9(int timeout, char *prompt)
{
	time_t	when, otime, ntime;
	int		c, yes;
	char	*argv[2], *cp, *ep;
	char	*kernelname;
#ifdef BOOT_PROMPT_123
	const char	*seq = "123", *p = seq;
#endif

	autoboot_tried = 1;

	if (timeout == -1) {
		timeout = 10;
		/* try to get a delay from the environment */
		if ((cp = FUNC2("autoboot_delay"))) {
			timeout = FUNC7(cp, &ep, 0);
			if (cp == ep)
				timeout = 10;		/* Unparseable? Set default! */
		}
	}

	kernelname = FUNC2("kernelname");
	if (kernelname == NULL) {
		argv[0] = NULL;
		FUNC4(0, 0, argv);
		kernelname = FUNC2("kernelname");
		if (kernelname == NULL) {
			command_errmsg = "no valid kernel found";
			return(CMD_ERROR);
		}
	}

	if (timeout >= 0) {
		otime = FUNC8(NULL);
		when = otime + timeout;	/* when to boot */

		yes = 0;

#ifdef BOOT_PROMPT_123
		printf("%s\n", (prompt == NULL) ? "Hit [Enter] to boot immediately, or "
		    "1 2 3 sequence for command prompt." : prompt);
#else
		FUNC5("%s\n", (prompt == NULL) ? "Hit [Enter] to boot immediately, or any other key for command prompt." : prompt);
#endif

		for (;;) {
			if (FUNC3()) {
				c = FUNC1();
#ifdef BOOT_PROMPT_123
				if ((c == '\r') || (c == '\n')) {
					yes = 1;
					break;
				} else if (c != *p++)
					p = seq;
				if (*p == 0)
					break;
#else
				if ((c == '\r') || (c == '\n'))
					yes = 1;
				break;
#endif
			}
			ntime = FUNC8(NULL);
			if (ntime >= when) {
				yes = 1;
				break;
			}

			if (ntime != otime) {
				FUNC5("\rBooting [%s] in %d second%s... ",
				    kernelname, (int)(when - ntime),
				    (when-ntime)==1?"":"s");
				otime = ntime;
			}
		}
	} else {
		yes = 1;
	}

	if (yes)
		FUNC5("\rBooting [%s]...               ", kernelname);
	FUNC6('\n');
	if (yes) {
		argv[0] = "boot";
		argv[1] = NULL;
		return(FUNC0(1, argv));
	}
	return(CMD_OK);
}