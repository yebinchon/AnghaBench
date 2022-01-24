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
typedef  int /*<<< orphan*/  pid_t ;

/* Variables and functions */
 int EXIT_FAILURE ; 
 int EXIT_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char**,char**) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 char* FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int*) ; 

__attribute__((used)) static int
FUNC6(void)
{
	pid_t ch;
	int status;
	char *argv[] = { NULL, NULL };
	char *envp[] = { NULL, NULL };

	if ((argv[0] = FUNC4("true")) == NULL)
		FUNC0(EXIT_FAILURE, "strdup(\"true\")");

	if ((envp[0] = FUNC4("FOO=BAZ")) == NULL)
		FUNC0(EXIT_FAILURE, "strdup(\"FOO=BAZ\")");

	/* Ensure parent is ready */
	(void)FUNC3(2);

	/* Do fork */
	switch (ch = FUNC2()) {
	case -1:
		return EXIT_FAILURE;
		/* NOTREACHED */
	case 0:
		return EXIT_SUCCESS;
		/* NOTREACHED */
	default:
		FUNC5(&status);
		break;
	}

	/* Exec */
	FUNC1("/usr/bin/true", argv, envp);

	/* NOTREACHED */
	return EXIT_FAILURE;
}