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
 int /*<<< orphan*/  AUDIT_CURRENT_LINK ; 
 scalar_t__ MAXPATHLEN ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (scalar_t__) ; 
 int FUNC3 (int /*<<< orphan*/ ,char*,scalar_t__) ; 

__attribute__((used)) static char *
FUNC4(void)
{
	char *cf;
	int len;

	cf = FUNC2(MAXPATHLEN);
	if (cf == NULL) {
		FUNC0("malloc failed: %m");
		return (NULL);
	}

	len = FUNC3(AUDIT_CURRENT_LINK, cf, MAXPATHLEN - 1);
	if (len < 0) {
		FUNC1(cf);
		return (NULL);
	}

	/* readlink() doesn't terminate string. */
	cf[len] = '\0';

	return (cf);
}