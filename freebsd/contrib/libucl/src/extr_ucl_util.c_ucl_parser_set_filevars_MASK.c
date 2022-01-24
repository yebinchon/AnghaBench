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
struct ucl_parser {int dummy; } ;
typedef  int /*<<< orphan*/  realbuf ;

/* Variables and functions */
 int PATH_MAX ; 
 char* FUNC0 (char*) ; 
 char* FUNC1 (char*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct ucl_parser*,char*,char*) ; 
 int /*<<< orphan*/ * FUNC3 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*,int) ; 

bool
FUNC5 (struct ucl_parser *parser, const char *filename, bool need_expand)
{
	char realbuf[PATH_MAX], *curdir;

	if (filename != NULL) {
		if (need_expand) {
			if (FUNC3 (filename, realbuf) == NULL) {
				return false;
			}
		}
		else {
			FUNC4 (realbuf, filename, sizeof (realbuf));
		}

		/* Define variables */
		FUNC2 (parser, "FILENAME", realbuf);
		curdir = FUNC0 (realbuf);
		FUNC2 (parser, "CURDIR", curdir);
	}
	else {
		/* Set everything from the current dir */
		curdir = FUNC1 (realbuf, sizeof (realbuf));
		FUNC2 (parser, "FILENAME", "undef");
		FUNC2 (parser, "CURDIR", curdir);
	}

	return true;
}