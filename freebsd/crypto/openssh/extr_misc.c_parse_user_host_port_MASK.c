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
 int FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char* FUNC3 (char**) ; 
 char* FUNC4 (char const*) ; 
 char* FUNC5 (char*,char) ; 
 char* FUNC6 (int /*<<< orphan*/ ) ; 

int
FUNC7(const char *s, char **userp, char **hostp, int *portp)
{
	char *sdup, *cp, *tmp;
	char *user = NULL, *host = NULL;
	int port = -1, ret = -1;

	if (userp != NULL)
		*userp = NULL;
	if (hostp != NULL)
		*hostp = NULL;
	if (portp != NULL)
		*portp = -1;

	if ((sdup = tmp = FUNC4(s)) == NULL)
		return -1;
	/* Extract optional username */
	if ((cp = FUNC5(tmp, '@')) != NULL) {
		*cp = '\0';
		if (*tmp == '\0')
			goto out;
		if ((user = FUNC4(tmp)) == NULL)
			goto out;
		tmp = cp + 1;
	}
	/* Extract mandatory hostname */
	if ((cp = FUNC3(&tmp)) == NULL || *cp == '\0')
		goto out;
	host = FUNC6(FUNC1(cp));
	/* Convert and verify optional port */
	if (tmp != NULL && *tmp != '\0') {
		if ((port = FUNC0(tmp)) <= 0)
			goto out;
	}
	/* Success */
	if (userp != NULL) {
		*userp = user;
		user = NULL;
	}
	if (hostp != NULL) {
		*hostp = host;
		host = NULL;
	}
	if (portp != NULL)
		*portp = port;
	ret = 0;
 out:
	FUNC2(sdup);
	FUNC2(user);
	FUNC2(host);
	return ret;
}