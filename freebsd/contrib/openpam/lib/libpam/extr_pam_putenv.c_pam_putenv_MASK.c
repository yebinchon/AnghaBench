#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {char** env; size_t env_count; size_t env_size; } ;
typedef  TYPE_1__ pam_handle_t ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  PAM_BUF_ERR ; 
 int /*<<< orphan*/  PAM_SUCCESS ; 
 int /*<<< orphan*/  PAM_SYSTEM_ERR ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  errno ; 
 int FUNC3 (TYPE_1__*,char const*,int) ; 
 char** FUNC4 (char**,int) ; 
 char* FUNC5 (char const*,char) ; 
 void* FUNC6 (char const*) ; 

int
FUNC7(pam_handle_t *pamh,
	const char *namevalue)
{
	char **env, *p;
	size_t env_size;
	int i;

	FUNC0();

	/* sanity checks */
	if ((p = FUNC5(namevalue, '=')) == NULL) {
		errno = EINVAL;
		FUNC2(PAM_SYSTEM_ERR);
	}

	/* see if the variable is already in the environment */
	if ((i = FUNC3(pamh, namevalue, p - namevalue)) >= 0) {
		if ((p = FUNC6(namevalue)) == NULL)
			FUNC2(PAM_BUF_ERR);
		FUNC1(pamh->env[i]);
		pamh->env[i] = p;
		FUNC2(PAM_SUCCESS);
	}

	/* grow the environment list if necessary */
	if (pamh->env_count == pamh->env_size) {
		env_size = pamh->env_size * 2 + 1;
		env = FUNC4(pamh->env, sizeof(char *) * env_size);
		if (env == NULL)
			FUNC2(PAM_BUF_ERR);
		pamh->env = env;
		pamh->env_size = env_size;
	}

	/* add the variable at the end */
	if ((pamh->env[pamh->env_count] = FUNC6(namevalue)) == NULL)
		FUNC2(PAM_BUF_ERR);
	++pamh->env_count;
	FUNC2(PAM_SUCCESS);
}