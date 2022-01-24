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
 int /*<<< orphan*/  STDOUT_FILENO ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void
FUNC3(char *name, char *ttype)
{
	int err;

	/* Set up the terminal database information. */
	FUNC2(ttype, STDOUT_FILENO, &err);
	switch (err) {
	case -1:
		(void)FUNC1(stderr,
		    "%s: No terminal database found\n", name);
		FUNC0 (1);
	case 0:
		(void)FUNC1(stderr,
		    "%s: %s: unknown terminal type\n", name, ttype);
		FUNC0 (1);
	}
}