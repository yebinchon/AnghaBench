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
typedef  int /*<<< orphan*/  u_int ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char***,int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int FUNC3 (char*,char const*,int /*<<< orphan*/ ) ; 
 char* FUNC4 (char*,char*) ; 
 char* FUNC5 (char*) ; 

__attribute__((used)) static void
FUNC6(char **source, char ***env, u_int *envsize,
    const char *blacklist)
{
	char *var_name, *var_val;
	int i;

	if (source == NULL)
		return;

	for(i = 0; source[i] != NULL; i++) {
		var_name = FUNC5(source[i]);
		if ((var_val = FUNC4(var_name, "=")) == NULL) {
			FUNC2(var_name);
			continue;
		}
		*var_val++ = '\0';

		if (blacklist == NULL ||
		    FUNC3(var_name, blacklist, 0) != 1) {
			FUNC1("Copy environment: %s=%s", var_name, var_val);
			FUNC0(env, envsize, var_name, var_val);
		}

		FUNC2(var_name);
	}
}