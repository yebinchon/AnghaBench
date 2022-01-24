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
 int /*<<< orphan*/  FUNC0 (size_t) ; 
 char* FUNC1 (char*,size_t) ; 

__attribute__((used)) static const char *
FUNC2(char c)
{
	static char	*stack;
	static size_t	 sz;
	static size_t	 cur;

	switch (c) {
	case '\0':
		break;
	case (char)-1:
		FUNC0(cur);
		stack[--cur] = '\0';
		break;
	default:
		if (cur + 1 >= sz) {
			sz += 8;
			stack = FUNC1(stack, sz);
		}
		stack[cur] = c;
		stack[++cur] = '\0';
		break;
	}
	return stack == NULL ? "" : stack;
}