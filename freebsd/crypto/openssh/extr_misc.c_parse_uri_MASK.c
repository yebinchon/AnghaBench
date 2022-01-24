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
 char const* FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char* FUNC3 (char**,char*) ; 
 char* FUNC4 (char*,char) ; 
 size_t FUNC5 (char const*) ; 
 scalar_t__ FUNC6 (char const*,char const*,int) ; 
 char* FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 char* FUNC9 (char const*) ; 

int
FUNC10(const char *scheme, const char *uri, char **userp, char **hostp,
    int *portp, char **pathp)
{
	char *uridup, *cp, *tmp, ch;
	char *user = NULL, *host = NULL, *path = NULL;
	int port = -1, ret = -1;
	size_t len;

	len = FUNC5(scheme);
	if (FUNC6(uri, scheme, len) != 0 || FUNC6(uri + len, "://", 3) != 0)
		return 1;
	uri += len + 3;

	if (userp != NULL)
		*userp = NULL;
	if (hostp != NULL)
		*hostp = NULL;
	if (portp != NULL)
		*portp = -1;
	if (pathp != NULL)
		*pathp = NULL;

	uridup = tmp = FUNC9(uri);

	/* Extract optional ssh-info (username + connection params) */
	if ((cp = FUNC4(tmp, '@')) != NULL) {
		char *delim;

		*cp = '\0';
		/* Extract username and connection params */
		if ((delim = FUNC4(tmp, ';')) != NULL) {
			/* Just ignore connection params for now */
			*delim = '\0';
		}
		if (*tmp == '\0') {
			/* Empty username */
			goto out;
		}
		if ((user = FUNC7(tmp)) == NULL)
			goto out;
		tmp = cp + 1;
	}

	/* Extract mandatory hostname */
	if ((cp = FUNC3(&tmp, &ch)) == NULL || *cp == '\0')
		goto out;
	host = FUNC9(FUNC1(cp));
	if (!FUNC8(host, 0, NULL))
		goto out;

	if (tmp != NULL && *tmp != '\0') {
		if (ch == ':') {
			/* Convert and verify port. */
			if ((cp = FUNC4(tmp, '/')) != NULL)
				*cp = '\0';
			if ((port = FUNC0(tmp)) <= 0)
				goto out;
			tmp = cp ? cp + 1 : NULL;
		}
		if (tmp != NULL && *tmp != '\0') {
			/* Extract optional path */
			if ((path = FUNC7(tmp)) == NULL)
				goto out;
		}
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
	if (pathp != NULL) {
		*pathp = path;
		path = NULL;
	}
	ret = 0;
 out:
	FUNC2(uridup);
	FUNC2(user);
	FUNC2(host);
	FUNC2(path);
	return ret;
}