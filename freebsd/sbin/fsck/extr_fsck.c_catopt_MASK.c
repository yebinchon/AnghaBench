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
 char* FUNC0 (char*,size_t) ; 
 char* FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (char*,size_t,char*,char const*) ; 
 size_t FUNC3 (char const*) ; 

__attribute__((used)) static void
FUNC4(char **sp, const char *o)
{
	char *s;
	size_t i, j;

	s = *sp;
	if (s) {
		i = FUNC3(s);
		j = i + 1 + FUNC3(o) + 1;
		s = FUNC0(s, j);
		(void)FUNC2(s + i, j, ",%s", o);
	} else
		s = FUNC1(o);
	*sp = s;
}