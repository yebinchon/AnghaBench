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
 scalar_t__ FUNC0 (char*,char*) ; 

__attribute__((used)) static bool
FUNC1(char **aliases0, char **aliases1)
{
	int i0, i1;

	if (aliases0 == NULL && aliases1 == NULL)
		return (true);
	if (aliases0 == NULL || aliases1 == NULL)
		return (false);

	for (i0 = 0; aliases0[i0] != NULL; i0++) {
		for (i1 = 0; aliases1[i1] != NULL; i1++) {
			if (FUNC0(aliases0[i0], aliases1[i1]) == 0)
				break;
		}
		if (aliases1[i1] == NULL)
			return (false);
	}

	return (true);
}