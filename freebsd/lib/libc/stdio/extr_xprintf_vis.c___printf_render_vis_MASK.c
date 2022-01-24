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
struct printf_info {unsigned int prec; scalar_t__ alt; int /*<<< orphan*/  pad; scalar_t__ showsign; } ;
struct __printf_io {int dummy; } ;

/* Variables and functions */
 int VIS_CSTYLE ; 
 int VIS_HTTPSTYLE ; 
 int VIS_OCTAL ; 
 int VIS_WHITE ; 
 int /*<<< orphan*/  FUNC0 (struct __printf_io*) ; 
 int FUNC1 (struct __printf_io*,struct printf_info const*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char* FUNC3 (unsigned int) ; 
 unsigned int FUNC4 (char*) ; 
 int FUNC5 (char*,char*,unsigned int,int) ; 

int
FUNC6(struct __printf_io *io, const struct printf_info *pi, const void *const *arg)
{
	char *p, *buf;
	unsigned l;
	int ret;

	ret = 0;
	p = *((char **)arg[0]);
	if (p == NULL)
		return (FUNC1(io, pi, "(null)", 6));
	if (pi->prec >= 0)
		l = pi->prec;
	else
		l = FUNC4(p);
	buf = FUNC3(l * 4 + 1);
	if (buf == NULL)
		return (-1);
	if (pi->showsign)
		ret = FUNC5(buf, p, l, VIS_WHITE | VIS_HTTPSTYLE);
	else if (pi->pad == '0')
		ret = FUNC5(buf, p, l, VIS_WHITE | VIS_OCTAL);
	else if (pi->alt)
		ret = FUNC5(buf, p, l, VIS_WHITE);
	else
		ret = FUNC5(buf, p, l, VIS_WHITE | VIS_CSTYLE | VIS_OCTAL);
	ret += FUNC1(io, pi, buf, ret);
	FUNC0(io);
	FUNC2(buf);
	return(ret);
}