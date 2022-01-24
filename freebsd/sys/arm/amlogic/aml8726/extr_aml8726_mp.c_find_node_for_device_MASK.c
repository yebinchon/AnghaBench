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
typedef  int phandle_t ;

/* Variables and functions */
 int FUNC0 (char const*) ; 
 int FUNC1 (int,char const*,int) ; 
 scalar_t__ FUNC2 (int,char const*) ; 

__attribute__((used)) static phandle_t
FUNC3(const char *device, const char **compatible)
{
	int i;
	phandle_t node;

	/*
	 * Try to access the node directly i.e. through /aliases/.
	 */

	if ((node = FUNC0(device)) != -1)
		for (i = 0; compatible[i]; i++)
			if (FUNC2(node, compatible[i]))
				return node;

	/*
	 * Find the node the long way.
	 */

	for (i = 0; compatible[i]; i++) {
		if ((node = FUNC0("/soc")) == -1)
			return (0);

		if ((node = FUNC1(node, compatible[i], 1)) != 0)
			return node;
	}

	return (0);
}