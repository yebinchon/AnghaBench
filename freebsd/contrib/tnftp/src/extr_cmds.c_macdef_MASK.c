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
struct TYPE_2__ {char* mac_start; char* mac_end; int /*<<< orphan*/  mac_name; } ;

/* Variables and functions */
 int EOF ; 
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int*,char***,char*) ; 
 int code ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 char FUNC3 () ; 
 scalar_t__ interactive ; 
 char* macbuf ; 
 int macnum ; 
 TYPE_1__* macros ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  ttyout ; 

void
FUNC5(int argc, char *argv[])
{
	char *tmp;
	int c;

	if (argc == 0)
		goto usage;
	if (macnum == 16) {
		FUNC2("Limit of 16 macros have already been defined.\n",
		    ttyout);
		code = -1;
		return;
	}
	if ((argc < 2 && !FUNC1(&argc, &argv, "macro name")) || argc > 2) {
 usage:
		FUNC0("usage: %s macro_name\n", argv[0]);
		code = -1;
		return;
	}
	if (interactive)
		FUNC2(
		"Enter macro line by line, terminating it with a null line.\n",
		    ttyout);
	(void)FUNC4(macros[macnum].mac_name, argv[1],
	    sizeof(macros[macnum].mac_name));
	if (macnum == 0)
		macros[macnum].mac_start = macbuf;
	else
		macros[macnum].mac_start = macros[macnum - 1].mac_end + 1;
	tmp = macros[macnum].mac_start;
	while (tmp != macbuf+4096) {
		if ((c = FUNC3()) == EOF) {
			FUNC2("macdef: end of file encountered.\n", ttyout);
			code = -1;
			return;
		}
		if ((*tmp = c) == '\n') {
			if (tmp == macros[macnum].mac_start) {
				macros[macnum++].mac_end = tmp;
				code = 0;
				return;
			}
			if (*(tmp-1) == '\0') {
				macros[macnum++].mac_end = tmp - 1;
				code = 0;
				return;
			}
			*tmp = '\0';
		}
		tmp++;
	}
	while (1) {
		while ((c = FUNC3()) != '\n' && c != EOF)
			/* LOOP */;
		if (c == EOF || FUNC3() == '\n') {
			FUNC2("Macro not defined - 4K buffer exceeded.\n",
			    ttyout);
			code = -1;
			return;
		}
	}
}