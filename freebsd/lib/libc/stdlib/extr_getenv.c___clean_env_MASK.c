#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int active; struct TYPE_6__* name; scalar_t__ putenv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ envActive ; 
 TYPE_1__* envVars ; 
 int envVarsTotal ; 
 TYPE_1__* environ ; 
 scalar_t__ environSize ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 TYPE_1__* intEnviron ; 
 TYPE_1__* origEnviron ; 

__attribute__((used)) static void
FUNC2(bool freeVars)
{
	int envNdx;

	/* Deallocate environment and environ if created by *env(). */
	if (envVars != NULL) {
		for (envNdx = envVarsTotal - 1; envNdx >= 0; envNdx--)
			/* Free variables or deactivate them. */
			if (envVars[envNdx].putenv) {
				if (!freeVars)
					FUNC0(envNdx);
			} else {
				if (freeVars)
					FUNC1(envVars[envNdx].name);
				else
					envVars[envNdx].active = false;
			}
		if (freeVars) {
			FUNC1(envVars);
			envVars = NULL;
		} else
			envActive = 0;

		/* Restore original environ if it has not updated by program. */
		if (origEnviron != NULL) {
			if (environ == intEnviron)
				environ = origEnviron;
			FUNC1(intEnviron);
			intEnviron = NULL;
			environSize = 0;
		}
	}

	return;
}