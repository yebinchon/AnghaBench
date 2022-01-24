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
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int PATH_MAX ; 
 int /*<<< orphan*/  _ENV_UTIL_COMPAT ; 
 int /*<<< orphan*/  _PATH_UTIL_COMPAT ; 
 char* FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 scalar_t__ FUNC2 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int) ; 
 char* FUNC4 (char**,char*) ; 

int
FUNC5(const char *utility)
{
	char buf[PATH_MAX];
	char *p, *bp;
	int len;

	if ((p = FUNC0(_ENV_UTIL_COMPAT)) != NULL) {
		FUNC3(buf, p, sizeof buf);
	} else {
		if ((len = FUNC1(_PATH_UTIL_COMPAT, buf, sizeof(buf) - 1)) < 0)
			return 0;
		buf[len] = '\0';
	}
	if (buf[0] == '\0')
		return 1;

	bp = buf;
	while ((p = FUNC4(&bp, ",")) != NULL) {
		if (FUNC2(p, utility) == 0)
			return 1;
	}
	return 0;
}