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
struct TYPE_2__ {int active; size_t valueSize; size_t nameLen; char* value; int /*<<< orphan*/ * name; scalar_t__ putenv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/ * FUNC1 (char const*,size_t,int*,int) ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int envActive ; 
 TYPE_1__* envVars ; 
 int envVarsTotal ; 
 int /*<<< orphan*/ * FUNC4 (int) ; 
 char* FUNC5 (int /*<<< orphan*/ *,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC6 (char*,char const*) ; 
 size_t FUNC7 (char const*) ; 

__attribute__((used)) static int
FUNC8(const char *name, size_t nameLen, const char *value, int overwrite)
{
	bool reuse;
	char *env;
	int envNdx;
	int newEnvActive;
	size_t valueLen;

	/* Find existing environment variable large enough to use. */
	envNdx = envVarsTotal - 1;
	newEnvActive = envActive;
	valueLen = FUNC7(value);
	reuse = false;
	if (FUNC1(name, nameLen, &envNdx, false) != NULL) {
		/* Deactivate entry if overwrite is allowed. */
		if (envVars[envNdx].active) {
			if (overwrite == 0)
				return (0);
			envVars[envNdx].active = false;
			newEnvActive--;
		}

		/* putenv() created variable cannot be reused. */
		if (envVars[envNdx].putenv)
			FUNC3(envNdx);

		/* Entry is large enough to reuse. */
		else if (envVars[envNdx].valueSize >= valueLen)
			reuse = true;
	}

	/* Create new variable if none was found of sufficient size. */
	if (! reuse) {
		/* Enlarge environment. */
		envNdx = envVarsTotal;
		if (!FUNC0())
			return (-1);

		/* Create environment entry. */
		envVars[envNdx].name = FUNC4(nameLen + sizeof ("=") +
		    valueLen);
		if (envVars[envNdx].name == NULL) {
			envVarsTotal--;
			return (-1);
		}
		envVars[envNdx].nameLen = nameLen;
		envVars[envNdx].valueSize = valueLen;

		/* Save name of name/value pair. */
		env = FUNC5(envVars[envNdx].name, name, nameLen);
		*env++ = '=';
	}
	else
		env = envVars[envNdx].value;

	/* Save value of name/value pair. */
	FUNC6(env, value);
	envVars[envNdx].value = env;
	envVars[envNdx].active = true;
	newEnvActive++;

	/* No need to rebuild environ if an active variable was reused. */
	if (reuse && newEnvActive == envActive)
		return (0);
	else
		return (FUNC2(newEnvActive));
}