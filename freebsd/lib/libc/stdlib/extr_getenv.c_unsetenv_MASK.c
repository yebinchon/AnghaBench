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
struct TYPE_2__ {int active; scalar_t__ putenv; } ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int FUNC0 () ; 
 int /*<<< orphan*/ * FUNC1 (char const*,size_t,int*,int) ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 size_t FUNC5 (char const*) ; 
 int envActive ; 
 TYPE_1__* envVars ; 
 int envVarsTotal ; 
 int /*<<< orphan*/  errno ; 

int
FUNC6(const char *name)
{
	int envNdx;
	size_t nameLen;
	int newEnvActive;

	/* Check for malformed name. */
	if (name == NULL || (nameLen = FUNC5(name)) == 0) {
		errno = EINVAL;
		return (-1);
	}

	/* Initialize environment. */
	if (FUNC2() == -1 || (envVars == NULL && FUNC0() == -1))
		return (-1);

	/* Deactivate specified variable. */
	/* Remove all occurrences. */
	envNdx = envVarsTotal - 1;
	newEnvActive = envActive;
	while (FUNC1(name, nameLen, &envNdx, true) != NULL) {
		envVars[envNdx].active = false;
		if (envVars[envNdx].putenv)
			FUNC4(envNdx);
		envNdx--;
		newEnvActive--;
	}
	if (newEnvActive != envActive)
		FUNC3(newEnvActive);

	return (0);
}