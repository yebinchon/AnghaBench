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
struct TYPE_2__ {int putenv; char* name; int active; int nameLen; int valueSize; int /*<<< orphan*/ * value; } ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/ * FUNC2 (char*,size_t,int*,int) ; 
 int FUNC3 () ; 
 int FUNC4 (int) ; 
 int envActive ; 
 TYPE_1__* envVars ; 
 int envVarsTotal ; 
 int /*<<< orphan*/  errno ; 
 char* FUNC5 (char*,char) ; 

int
FUNC6(char *string)
{
	char *equals;
	int envNdx;
	int newEnvActive;
	size_t nameLen;

	/* Check for malformed argument. */
	if (string == NULL || (equals = FUNC5(string, '=')) == NULL ||
	    (nameLen = equals - string) == 0) {
		errno = EINVAL;
		return (-1);
	}

	/* Initialize environment. */
	if (FUNC3() == -1 || (envVars == NULL && FUNC0() == -1))
		return (-1);

	/* Deactivate previous environment variable. */
	envNdx = envVarsTotal - 1;
	newEnvActive = envActive;
	if (FUNC2(string, nameLen, &envNdx, true) != NULL) {
		/* Reuse previous putenv slot. */
		if (envVars[envNdx].putenv) {
			envVars[envNdx].name = string;
			return (FUNC4(envActive));
		} else {
			newEnvActive--;
			envVars[envNdx].active = false;
		}
	}

	/* Enlarge environment. */
	envNdx = envVarsTotal;
	if (!FUNC1())
		return (-1);

	/* Create environment entry. */
	envVars[envNdx].name = string;
	envVars[envNdx].nameLen = -1;
	envVars[envNdx].value = NULL;
	envVars[envNdx].valueSize = -1;
	envVars[envNdx].putenv = true;
	envVars[envNdx].active = true;
	newEnvActive++;

	return (FUNC4(newEnvActive));
}