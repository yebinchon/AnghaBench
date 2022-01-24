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
 char* FUNC1 (size_t) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,size_t,char*,char const*,char*) ; 
 char* FUNC4 (char const*,char) ; 
 int FUNC5 (char const*) ; 
 scalar_t__ FUNC6 (char const*,char*,int) ; 
 char* FUNC7 (char const*,char) ; 

char * FUNC8(char *url, const char *base)
{
	char *n;
	size_t len;
	const char *pos;

	/* RFC 2396, Chapter 5.2 */
	/* TODO: consider adding all cases described in RFC 2396 */

	if (url == NULL)
		return NULL;

	if (FUNC6(url, "http://", 7) == 0)
		return url; /* absolute link */

	if (FUNC6(base, "http://", 7) != 0)
		return url; /* unable to handle base URL */

	len = FUNC5(url) + 1 + FUNC5(base) + 1;
	n = FUNC1(len);
	if (n == NULL)
		return url; /* failed */

	if (url[0] == '/') {
		pos = FUNC4(base + 7, '/');
		if (pos == NULL) {
			FUNC3(n, len, "%s%s", base, url);
		} else {
			FUNC2(n, base, pos - base);
			FUNC2(n + (pos - base), url, FUNC5(url) + 1);
		}
	} else {
		pos = FUNC7(base + 7, '/');
		if (pos == NULL) {
			FUNC3(n, len, "%s/%s", base, url);
		} else {
			FUNC2(n, base, pos - base + 1);
			FUNC2(n + (pos - base) + 1, url, FUNC5(url) +
				  1);
		}
	}

	FUNC0(url);

	return n;
}