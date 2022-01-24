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
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (char const*,char const*,char*) ; 
 int FUNC2 (char const*,char const*) ; 
 char* FUNC3 (char const*,char) ; 
 char* FUNC4 (char const*) ; 

int
FUNC5(const char *user, const char *host, const char *ipaddr,
    const char *pattern)
{
	char *p, *pat;
	int ret;

	/* test mode */
	if (user == NULL && host == NULL && ipaddr == NULL) {
		if ((p = FUNC3(pattern, '@')) != NULL &&
		    FUNC1(NULL, NULL, p + 1) < 0)
			return -1;
		return 0;
	}

	if ((p = FUNC3(pattern,'@')) == NULL)
		return FUNC2(user, pattern);

	pat = FUNC4(pattern);
	p = FUNC3(pat, '@');
	*p++ = '\0';

	if ((ret = FUNC2(user, pat)) == 1)
		ret = FUNC1(host, ipaddr, p);
	FUNC0(pat);

	return ret;
}