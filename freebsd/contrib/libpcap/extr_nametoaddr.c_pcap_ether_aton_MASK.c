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
typedef  int u_char ;

/* Variables and functions */
 scalar_t__ FUNC0 (unsigned char) ; 
 scalar_t__ FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 

u_char *
FUNC3(const char *s)
{
	register u_char *ep, *e;
	register u_char d;

	e = ep = (u_char *)FUNC1(6);
	if (e == NULL)
		return (NULL);

	while (*s) {
		if (*s == ':' || *s == '.' || *s == '-')
			s += 1;
		d = FUNC2(*s++);
		if (FUNC0((unsigned char)*s)) {
			d <<= 4;
			d |= FUNC2(*s++);
		}
		*ep++ = d;
	}

	return (e);
}