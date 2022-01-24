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
 int /*<<< orphan*/  MaxPathLen ; 
 char* altarg ; 
 int /*<<< orphan*/  FUNC0 (int*,char***,char*) ; 
 int code ; 
 int mapflag ; 
 int /*<<< orphan*/  mapin ; 
 int /*<<< orphan*/  mapout ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 scalar_t__ proxy ; 
 char* FUNC2 (char*,char) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

void
FUNC4(int argc, char **argv)
{
	char *cp;

	if (argc == 1) {
		mapflag = 0;
		FUNC1("Nmap off.\n");
		code = mapflag;
		return;
	}
	if (argc < 3 && !FUNC0(&argc, &argv, "mapout")) {
		FUNC1("Usage: %s [mapin mapout]\n",argv[0]);
		code = -1;
		return;
	}
	mapflag = 1;
	code = 1;
	cp = FUNC2(altarg, ' ');
	if (cp == NULL) {
		FUNC1("Usage: %s missing space\n",argv[0]);
		code = -1;
		return;
	}
	if (proxy) {
		while(*++cp == ' ')
			continue;
		altarg = cp;
		cp = FUNC2(altarg, ' ');
	}
	*cp = '\0';
	FUNC3(mapin, altarg, MaxPathLen);
	while (*++cp == ' ')
		continue;
	FUNC3(mapout, cp, MaxPathLen);
}