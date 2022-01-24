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
 int /*<<< orphan*/  MAXPATHLEN ; 
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 char* altarg ; 
 int /*<<< orphan*/  FUNC1 (int*,char***,char*) ; 
 int code ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int mapflag ; 
 int /*<<< orphan*/  mapin ; 
 int /*<<< orphan*/  mapout ; 
 scalar_t__ proxy ; 
 char* FUNC3 (char*,char) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ttyout ; 

void
FUNC5(int argc, char *argv[])
{
	char *cp;

	if (argc == 1) {
		mapflag = 0;
		FUNC2("Nmap off.\n", ttyout);
		code = mapflag;
		return;
	}
	if (argc == 0 ||
	    (argc < 3 && !FUNC1(&argc, &argv, "mapout")) || argc > 3) {
		FUNC0("usage: %s [mapin mapout]\n", argv[0]);
		code = -1;
		return;
	}
	mapflag = 1;
	code = 1;
	cp = FUNC3(altarg, ' ');
	if (proxy) {
		while(*++cp == ' ')
			continue;
		altarg = cp;
		cp = FUNC3(altarg, ' ');
	}
	*cp = '\0';
	(void)FUNC4(mapin, altarg, MAXPATHLEN);
	while (*++cp == ' ')
		continue;
	(void)FUNC4(mapout, cp, MAXPATHLEN);
}