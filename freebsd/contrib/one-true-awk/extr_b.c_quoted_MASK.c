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
typedef  int uschar ;

/* Variables and functions */
 int FUNC0 (int**) ; 
 scalar_t__ FUNC1 (int) ; 

int FUNC2(uschar **pp)	/* pick up next thing after a \\ */
			/* and increment *pp */
{
	uschar *p = *pp;
	int c;

	if ((c = *p++) == 't')
		c = '\t';
	else if (c == 'n')
		c = '\n';
	else if (c == 'f')
		c = '\f';
	else if (c == 'r')
		c = '\r';
	else if (c == 'b')
		c = '\b';
	else if (c == '\\')
		c = '\\';
	else if (c == 'x') {	/* hexadecimal goo follows */
		c = FUNC0(&p);	/* this adds a null if number is invalid */
	} else if (FUNC1(c)) {	/* \d \dd \ddd */
		int n = c - '0';
		if (FUNC1(*p)) {
			n = 8 * n + *p++ - '0';
			if (FUNC1(*p))
				n = 8 * n + *p++ - '0';
		}
		c = n;
	} /* else */
		/* c = c; */
	*pp = p;
	return c;
}