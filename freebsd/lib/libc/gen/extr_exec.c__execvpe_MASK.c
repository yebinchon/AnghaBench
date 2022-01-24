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
 char* _PATH_DEFPATH ; 
 int FUNC0 (char const*,char const*,char* const*,char* const*) ; 
 char* FUNC1 (char*) ; 

int
FUNC2(const char *name, char * const argv[], char * const envp[])
{
	const char *path;

	/* Get the path we're searching. */
	if ((path = FUNC1("PATH")) == NULL)
		path = _PATH_DEFPATH;

	return (FUNC0(name, path, argv, envp));
}