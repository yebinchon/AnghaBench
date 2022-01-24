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
 int n_search_dirs ; 
 char** search_dirs ; 
 scalar_t__ FUNC0 (char*,char const*) ; 
 char* FUNC1 (char const*) ; 
 scalar_t__ FUNC2 (char**,int) ; 

void
FUNC3(const char *name)
{
	int n;

	for (n = 0; n < n_search_dirs; n++)
		if (FUNC0(search_dirs[n], name) == 0)
			return;
	n_search_dirs++;
	search_dirs = (char **)
		FUNC2(search_dirs, n_search_dirs * sizeof search_dirs[0]);
	search_dirs[n_search_dirs - 1] = FUNC1(name);
}