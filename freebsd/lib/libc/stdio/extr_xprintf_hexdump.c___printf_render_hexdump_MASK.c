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
struct printf_info {int width; scalar_t__ alt; scalar_t__ showsign; } ;
struct __printf_io {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct __printf_io*) ; 
 scalar_t__ FUNC1 (struct __printf_io*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,...) ; 

int
FUNC3(struct __printf_io *io, const struct printf_info *pi, const void *const *arg)
{
	unsigned char *p;
	int i;
	unsigned u, l, j, a;
	char buf[100], *q;
	int ret;

	if (pi->width > 0 && pi->width < 16)
		l = pi->width;
	else
		l = 16;
	p = *((unsigned char **)arg[0]);
	i = *((int *)arg[1]);
	if (i < 0)
		i = 0;
	u = i;

	ret = 0;
	a = 0;
	while (u > 0) {
		q = buf;
		if (pi->showsign)
			q += FUNC2(q, " %04x", a);
		for (j = 0; j < l && j < u; j++)
			q += FUNC2(q, " %02x", p[j]);
		if (pi->alt) {
			for (; j < l; j++)
				q += FUNC2(q, "   ");
			q += FUNC2(q, "  |");
			for (j = 0; j < l && j < u; j++) {
				if (p[j] < ' ' || p[j] > '~')
					*q++ = '.';
				else
					*q++ = p[j];
			}
			for (; j < l; j++)
				*q++ = ' ';
			*q++ = '|';
		}
		if (l < u)
			j = l;
		else
			j = u;
		p += j;
		u -= j;
		a += j;
		if (u > 0)
			*q++ = '\n';
		ret += FUNC1(io, buf + 1, q - (buf + 1));
		FUNC0(io);
	}
	return (ret);
}