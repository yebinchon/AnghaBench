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
typedef  int /*<<< orphan*/  pam_handle_t ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int PAM_BUF_ERR ; 
 int PAM_SUCCESS ; 
 int PAM_SYSTEM_ERR ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ FUNC3 (char**,char*,char const*,char const*) ; 
 int /*<<< orphan*/  errno ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * FUNC6 (char const*,char) ; 
 int /*<<< orphan*/  FUNC7 (char const*) ; 

int
FUNC8(pam_handle_t *pamh,
	const char *name,
	const char *value,
	int overwrite)
{
	char *env;
	int r;

	FUNC0();

	/* sanity checks */
	if (*name == '\0' || FUNC6(name, '=') != NULL) {
		errno = EINVAL;
		FUNC2(PAM_SYSTEM_ERR);
	}

	/* is it already there? */
	if (!overwrite && FUNC4(pamh, name, FUNC7(name)) >= 0)
		FUNC2(PAM_SUCCESS);

	/* set it... */
	if (FUNC3(&env, "%s=%s", name, value) < 0)
		FUNC2(PAM_BUF_ERR);
	r = FUNC5(pamh, env);
	FUNC1(env);
	FUNC2(r);
}