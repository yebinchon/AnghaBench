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
 scalar_t__ EEXIST ; 
 scalar_t__ ENOENT ; 
 scalar_t__ errno ; 
 int FUNC0 (char const*) ; 
 scalar_t__ FUNC1 (char const*,char*) ; 
 scalar_t__ FUNC2 (char const*,char*,int) ; 

__attribute__((used)) static int
FUNC3(const char *name)
{
	int kl;

	if (FUNC1(name, "linux") == 0 || FUNC2(name, "linux.", 6) == 0)
		kl = FUNC0("linux");
	else if (FUNC1(name, "sysvmsg") == 0 || FUNC1(name, "sysvsem") == 0 ||
	    FUNC1(name, "sysvshm") == 0)
		kl = FUNC0(name);
	else if (FUNC2(name, "allow.mount.", 12) == 0) {
		/* Load the matching filesystem */
		const char *modname = name + 12;

		kl = FUNC0(modname);
		if (kl < 0 && errno == ENOENT &&
		    FUNC2(modname, "no", 2) == 0)
			kl = FUNC0(modname + 2);
	} else {
		errno = ENOENT;
		return (-1);
	}
	if (kl < 0 && errno == EEXIST) {
		/*
		 * In the module is already loaded, then it must not contain
		 * the parameter.
		 */
		errno = ENOENT;
	}
	return kl;
}