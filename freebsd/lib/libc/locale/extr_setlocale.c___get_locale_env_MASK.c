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
 char** categories ; 
 char* FUNC0 (char*) ; 

const char *
FUNC1(int category)
{
	const char *env;

	/* 1. check LC_ALL. */
	env = FUNC0(categories[0]);

	/* 2. check LC_* */
	if (env == NULL || !*env)
		env = FUNC0(categories[category]);

	/* 3. check LANG */
	if (env == NULL || !*env)
		env = FUNC0("LANG");

	/* 4. if none is set, fall to "C" */
	if (env == NULL || !*env)
		env = "C";

	return (env);
}