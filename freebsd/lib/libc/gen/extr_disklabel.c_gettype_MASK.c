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
 int FUNC0 (char*) ; 
 scalar_t__ FUNC1 (unsigned char) ; 
 scalar_t__ FUNC2 (char*,char const*) ; 

__attribute__((used)) static int
FUNC3(char *t, const char **names)
{
	const char **nm;

	for (nm = names; *nm; nm++)
		if (FUNC2(t, *nm) == 0)
			return (nm - names);
	if (FUNC1((unsigned char)*t))
		return (FUNC0(t));
	return (0);
}