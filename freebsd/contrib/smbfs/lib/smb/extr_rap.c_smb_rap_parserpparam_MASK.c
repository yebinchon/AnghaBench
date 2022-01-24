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
 int EINVAL ; 
 scalar_t__ FUNC0 (char const) ; 
 int FUNC1 (char const*,char**,int) ; 

__attribute__((used)) static int
FUNC2(const char *s, char **next, int *rlen)
{
	char *np;
	int len, m;

	m = 1;
	switch (*s++) {
	    case 'e':
	    case 'h':
		len = 2;
		break;
	    case 'i':
		len = 4;
		break;
	    case 'g':
		len = 1;
		break;
	    default:
		return EINVAL;
	}
	if (FUNC0(*s)) {
		len *= FUNC1(s, &np, 10);
		s = np;
	}
	*rlen = len;
	*(const char**)next = s;
	return 0;
}