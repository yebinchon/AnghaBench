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
typedef  int /*<<< orphan*/  uint32_t ;
struct _s_x {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct _s_x*,char*) ; 
 char* FUNC1 (char*,char) ; 

int
FUNC2(struct _s_x *flags, char *p, char **e, uint32_t *set,
    uint32_t *clear)
{
	char *q;	/* points to the separator */
	int val;
	uint32_t *which;	/* mask we are working on */

	while (p && *p) {
		if (*p == '!') {
			p++;
			which = clear;
		} else
			which = set;
		q = FUNC1(p, ',');
		if (q)
			*q++ = '\0';
		val = FUNC0(flags, p);
		if (val <= 0) {
			if (e != NULL)
				*e = p;
			return (-1);
		}
		*which |= (uint32_t)val;
		p = q;
	}
	return (0);
}