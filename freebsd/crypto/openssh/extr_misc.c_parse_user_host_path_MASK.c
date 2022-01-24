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
 char* FUNC0 (char*) ; 
 char* FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char* FUNC3 (char*,char) ; 
 char* FUNC4 (char const*) ; 

int
FUNC5(const char *s, char **userp, char **hostp, char **pathp)
{
	char *user = NULL, *host = NULL, *path = NULL;
	char *sdup, *tmp;
	int ret = -1;

	if (userp != NULL)
		*userp = NULL;
	if (hostp != NULL)
		*hostp = NULL;
	if (pathp != NULL)
		*pathp = NULL;

	sdup = FUNC4(s);

	/* Check for remote syntax: [user@]host:[path] */
	if ((tmp = FUNC1(sdup)) == NULL)
		goto out;

	/* Extract optional path */
	*tmp++ = '\0';
	if (*tmp == '\0')
		tmp = ".";
	path = FUNC4(tmp);

	/* Extract optional user and mandatory host */
	tmp = FUNC3(sdup, '@');
	if (tmp != NULL) {
		*tmp++ = '\0';
		host = FUNC4(FUNC0(tmp));
		if (*sdup != '\0')
			user = FUNC4(sdup);
	} else {
		host = FUNC4(FUNC0(sdup));
		user = NULL;
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
	if (pathp != NULL) {
		*pathp = path;
		path = NULL;
	}
	ret = 0;
out:
	FUNC2(sdup);
	FUNC2(user);
	FUNC2(host);
	FUNC2(path);
	return ret;
}