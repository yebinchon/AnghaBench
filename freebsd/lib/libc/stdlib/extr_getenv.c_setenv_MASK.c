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
 int FUNC0 () ; 
 int FUNC1 () ; 
 int FUNC2 (char const*,size_t,char const*,int) ; 
 size_t FUNC3 (char const*) ; 
 int /*<<< orphan*/ * envVars ; 
 int /*<<< orphan*/  errno ; 

int
FUNC4(const char *name, const char *value, int overwrite)
{
	size_t nameLen;

	/* Check for malformed name. */
	if (name == NULL || (nameLen = FUNC3(name)) == 0) {
		errno = EINVAL;
		return (-1);
	}

	/* Initialize environment. */
	if (FUNC1() == -1 || (envVars == NULL && FUNC0() == -1))
		return (-1);

	return (FUNC2(name, nameLen, value, overwrite));
}