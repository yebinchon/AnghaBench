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
 int /*<<< orphan*/  ENAMETOOLONG ; 
 int /*<<< orphan*/  ENOENT ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int ZFS_MAX_DATASET_NAME_LEN ; 
 int /*<<< orphan*/  FUNC1 (char*,void*) ; 
 scalar_t__ FUNC2 (char const*,char) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*) ; 
 int FUNC4 (char const*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char const*,int) ; 
 char* FUNC6 (char const*,char*) ; 

__attribute__((used)) static int
FUNC7(const char *path, char *component, const char **nextp)
{
	char *p;

	if ((path == NULL) || (path[0] == '\0'))
		return (FUNC0(ENOENT));
	/* This would be a good place to reserve some namespace... */
	p = FUNC6(path, "/@");
	if (p && (p[1] == '/' || p[1] == '@')) {
		/* two separators in a row */
		return (FUNC0(EINVAL));
	}
	if (p == NULL || p == path) {
		/*
		 * if the first thing is an @ or /, it had better be an
		 * @ and it had better not have any more ats or slashes,
		 * and it had better have something after the @.
		 */
		if (p != NULL &&
		    (p[0] != '@' || FUNC6(path+1, "/@") || p[1] == '\0'))
			return (FUNC0(EINVAL));
		if (FUNC4(path) >= ZFS_MAX_DATASET_NAME_LEN)
			return (FUNC0(ENAMETOOLONG));
		(void) FUNC3(component, path);
		p = NULL;
	} else if (p[0] == '/') {
		if (p - path >= ZFS_MAX_DATASET_NAME_LEN)
			return (FUNC0(ENAMETOOLONG));
		(void) FUNC5(component, path, p - path);
		component[p - path] = '\0';
		p++;
	} else if (p[0] == '@') {
		/*
		 * if the next separator is an @, there better not be
		 * any more slashes.
		 */
		if (FUNC2(path, '/'))
			return (FUNC0(EINVAL));
		if (p - path >= ZFS_MAX_DATASET_NAME_LEN)
			return (FUNC0(ENAMETOOLONG));
		(void) FUNC5(component, path, p - path);
		component[p - path] = '\0';
	} else {
		FUNC1("invalid p=%p", (void *)p);
	}
	*nextp = p;
	return (0);
}