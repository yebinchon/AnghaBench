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
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENOENT ; 
 int /*<<< orphan*/  PATH_MAX ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (int /*<<< orphan*/ ) ; 
 char* FUNC2 (char const*,char*) ; 

char *
FUNC3(const char * __restrict path, char * __restrict resolved)
{
	char *m, *res;

	if (path == NULL) {
		errno = EINVAL;
		return (NULL);
	}
	if (path[0] == '\0') {
		errno = ENOENT;
		return (NULL);
	}
	if (resolved != NULL) {
		m = NULL;
	} else {
		m = resolved = FUNC1(PATH_MAX);
		if (resolved == NULL)
			return (NULL);
	}
	res = FUNC2(path, resolved);
	if (res == NULL)
		FUNC0(m);
	return (res);
}