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
 int FUNC0 (char**,char*,char*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char* FUNC3 (char const*) ; 

char *
FUNC4(char *s0, const char *s1)
{
	char *cp;

	if (s1 == NULL || *s1 == '\0')
		return (s0);

	if (s0 && *s0) {
		if (FUNC0(&cp, "%s,%s", s0, s1) == -1)
			FUNC1(1, "asprintf failed");
	} else
		cp = FUNC3(s1);

	if (s0)
		FUNC2(s0);
	return (cp);
}