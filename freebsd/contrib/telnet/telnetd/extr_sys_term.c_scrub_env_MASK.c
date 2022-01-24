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
 char** environ ; 
 char** FUNC0 (size_t) ; 
 int /*<<< orphan*/ * FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char const*) ; 
 scalar_t__ FUNC3 (char*,char const*,int /*<<< orphan*/ ) ; 

void
FUNC4(void)
{
	static const char *rej[] = {
		"TERMCAP=/",
		NULL
	};

	static const char *acc[] = {
		"XAUTH=", "XAUTHORITY=", "DISPLAY=",
		"TERM=",
		"EDITOR=",
		"PAGER=",
		"LOGNAME=",
		"POSIXLY_CORRECT=",
		"PRINTER=",
		NULL
	};

	char **cpp, **cpp2;
	const char **p;
	char ** new_environ;
	size_t count;

	/* Allocate space for scrubbed environment. */
	for (count = 1, cpp = environ; *cpp; count++, cpp++)
		continue;
	if ((new_environ = FUNC0(count * sizeof(char *))) == NULL) {
		environ = NULL;
		return;
	}

 	for (cpp2 = new_environ, cpp = environ; *cpp; cpp++) {
		int reject_it = 0;

		for(p = rej; *p; p++)
			if(FUNC3(*cpp, *p, FUNC2(*p)) == 0) {
				reject_it = 1;
				break;
			}
		if (reject_it)
			continue;

		for(p = acc; *p; p++)
			if(FUNC3(*cpp, *p, FUNC2(*p)) == 0)
				break;
		if(*p != NULL) {
			if ((*cpp2++ = FUNC1(*cpp)) == NULL) {
				environ = new_environ;
				return;
			}
		}
 	}
	*cpp2 = NULL;
	environ = new_environ;
}