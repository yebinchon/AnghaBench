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
 char* FUNC0 (int,size_t) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (char*,char*,int /*<<< orphan*/ *) ; 
 char* FUNC3 (char const*) ; 
 size_t FUNC4 (char*,char*,size_t) ; 
 int /*<<< orphan*/  FUNC5 (char*,char const*,size_t) ; 
 int FUNC6 (char const*) ; 
 char* FUNC7 (char**,char*) ; 

char *
FUNC8(const char *a, const char *b)
{
	char *ret = NULL, *tmp = NULL, *cp, *p, *m;
	size_t len;

	if (a == NULL || *a == '\0')
		return FUNC3(b);
	if (b == NULL || *b == '\0')
		return FUNC3(a);
	if (FUNC6(b) > 1024*1024)
		return NULL;
	len = FUNC6(a) + FUNC6(b) + 2;
	if ((tmp = cp = FUNC3(b)) == NULL ||
	    (ret = FUNC0(1, len)) == NULL) {
		FUNC1(tmp);
		return NULL;
	}
	FUNC5(ret, a, len);
	for ((p = FUNC7(&cp, ",")); p && *p != '\0'; (p = FUNC7(&cp, ","))) {
		if ((m = FUNC2(ret, p, NULL)) != NULL) {
			FUNC1(m);
			continue; /* Algorithm already present */
		}
		if (FUNC4(ret, ",", len) >= len ||
		    FUNC4(ret, p, len) >= len) {
			FUNC1(tmp);
			FUNC1(ret);
			return NULL; /* Shouldn't happen */
		}
	}
	FUNC1(tmp);
	return ret;
}