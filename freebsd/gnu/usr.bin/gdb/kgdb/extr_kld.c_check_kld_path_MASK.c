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
 scalar_t__ FUNC0 (char*) ; 
 char** kld_suffixes ; 
 size_t FUNC1 (char*,char const*,size_t) ; 
 int FUNC2 (char*) ; 

__attribute__((used)) static int
FUNC3 (char *path, size_t path_size)
{
	const char **suffix;
	char *ep;

	ep = path + FUNC2(path);
	suffix = kld_suffixes;
	while (*suffix != NULL) {
		if (FUNC1(path, *suffix, path_size) < path_size) {
			if (FUNC0(path))
				return (1);
		}

		/* Restore original path to remove suffix. */
		*ep = '\0';
		suffix++;
	}
	return (0);
}