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
 int /*<<< orphan*/  CorruptEnvValueMsg ; 
 int /*<<< orphan*/  EFAULT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int FUNC2 (char*,int,char*,int) ; 
 scalar_t__ envActive ; 
 char** environ ; 
 int /*<<< orphan*/  errno ; 
 char** intEnviron ; 
 char** origEnviron ; 
 char* FUNC3 (char*,char) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

__attribute__((used)) static int
FUNC5(void)
{
	char **env;
	char *equals;

	/*
	 * Internally-built environ has been replaced or cleared (detected by
	 * using the count of active variables against a NULL as the first value
	 * in environ).  Clean up everything.
	 */
	if (intEnviron != NULL && (environ != intEnviron || (envActive > 0 &&
	    environ[0] == NULL))) {
		/* Deactivate all environment variables. */
		if (envActive > 0) {
			origEnviron = NULL;
			FUNC0(false);
		}

		/*
		 * Insert new environ into existing, yet deactivated,
		 * environment array.
		 */
		origEnviron = environ;
		if (origEnviron != NULL)
			for (env = origEnviron; *env != NULL; env++) {
				if ((equals = FUNC3(*env, '=')) == NULL) {
					FUNC1(CorruptEnvValueMsg, *env,
					    FUNC4(*env));
					errno = EFAULT;
					return (-1);
				}
				if (FUNC2(*env, equals - *env, equals + 1,
				    1) == -1)
					return (-1);
			}
	}

	return (0);
}