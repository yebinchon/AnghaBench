#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int putenv; size_t valueSize; size_t nameLen; int active; int /*<<< orphan*/ * name; int /*<<< orphan*/ * value; } ;

/* Variables and functions */
 int /*<<< orphan*/  CorruptEnvFindMsg ; 
 int /*<<< orphan*/  CorruptEnvValueMsg ; 
 int EFAULT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,size_t,int*,int) ; 
 scalar_t__ FUNC3 (int) ; 
 TYPE_1__* FUNC4 (int,int) ; 
 TYPE_1__* envVars ; 
 int envVarsSize ; 
 int envVarsTotal ; 
 char** environ ; 
 int errno ; 
 char** origEnviron ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,char) ; 
 int /*<<< orphan*/ * FUNC6 (char*) ; 
 size_t FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC8(void)
{
	char **env;
	int activeNdx;
	int envNdx;
	int savedErrno;
	size_t nameLen;

	/* Check for non-existant environment. */
	if (environ == NULL || environ[0] == NULL)
		return (0);

	/* Count environment variables. */
	for (env = environ, envVarsTotal = 0; *env != NULL; env++)
		envVarsTotal++;
	envVarsSize = envVarsTotal * 2;

	/* Create new environment. */
	envVars = FUNC4(envVarsSize, sizeof(*envVars));
	if (envVars == NULL)
		goto Failure;

	/* Copy environ values and keep track of them. */
	for (envNdx = envVarsTotal - 1; envNdx >= 0; envNdx--) {
		envVars[envNdx].putenv = false;
		envVars[envNdx].name =
		    FUNC6(environ[envVarsTotal - envNdx - 1]);
		if (envVars[envNdx].name == NULL)
			goto Failure;
		envVars[envNdx].value = FUNC5(envVars[envNdx].name, '=');
		if (envVars[envNdx].value != NULL) {
			envVars[envNdx].value++;
			envVars[envNdx].valueSize =
			    FUNC7(envVars[envNdx].value);
		} else {
			FUNC1(CorruptEnvValueMsg, envVars[envNdx].name,
			    FUNC7(envVars[envNdx].name));
			errno = EFAULT;
			goto Failure;
		}

		/*
		 * Find most current version of variable to make active.  This
		 * will prevent multiple active variables from being created
		 * during this initialization phase.
		 */
		nameLen = envVars[envNdx].value - envVars[envNdx].name - 1;
		envVars[envNdx].nameLen = nameLen;
		activeNdx = envVarsTotal - 1;
		if (FUNC2(envVars[envNdx].name, nameLen, &activeNdx,
		    false) == NULL) {
			FUNC1(CorruptEnvFindMsg, envVars[envNdx].name,
			    nameLen);
			errno = EFAULT;
			goto Failure;
		}
		envVars[activeNdx].active = true;
	}

	/* Create a new environ. */
	origEnviron = environ;
	environ = NULL;
	if (FUNC3(envVarsTotal) == 0)
		return (0);

Failure:
	savedErrno = errno;
	FUNC0(true);
	errno = savedErrno;

	return (-1);
}