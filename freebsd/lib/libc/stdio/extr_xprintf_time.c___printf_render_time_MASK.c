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
typedef  scalar_t__ time_t ;
struct timeval {scalar_t__ tv_sec; int tv_usec; } ;
struct timespec {scalar_t__ tv_sec; int tv_nsec; } ;
struct printf_info {int prec; scalar_t__ alt; scalar_t__ is_long_double; scalar_t__ is_long; } ;
struct __printf_io {int dummy; } ;
typedef  scalar_t__ intmax_t ;

/* Variables and functions */
 scalar_t__ DAY ; 
 scalar_t__ HOUR ; 
 scalar_t__ MINUTE ; 
 scalar_t__ YEAR ; 
 int /*<<< orphan*/  FUNC0 (struct __printf_io*) ; 
 int FUNC1 (struct __printf_io*,struct printf_info const*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int,...) ; 

int
FUNC3(struct __printf_io *io, const struct printf_info *pi, const void *const *arg)
{
	char buf[100];
	char *p;
	struct timeval *tv;
	struct timespec *ts;
	time_t *tp;
	intmax_t t, tx;
	int i, prec, nsec, ret;

	if (pi->is_long) {
		tv = *((struct timeval **)arg[0]);
		t = tv->tv_sec;
		nsec = tv->tv_usec * 1000;
		prec = 6;
	} else if (pi->is_long_double) {
		ts = *((struct timespec **)arg[0]);
		t = ts->tv_sec;
		nsec = ts->tv_nsec;
		prec = 9;
	} else {
		tp = *((time_t **)arg[0]);
		t = *tp;
		nsec = 0;
		prec = 0;
	}
	if (pi->is_long || pi->is_long_double) {
		if (pi->prec >= 0) 
			prec = pi->prec;
		if (prec == 0)
			nsec = 0;
	}

	p = buf;
	if (pi->alt) {
		tx = t;
		if (t >= YEAR) {
			p += FUNC2(p, "%jdy", t / YEAR);
			t %= YEAR;
		}
		if (tx >= DAY && (t != 0 || prec != 0)) {
			p += FUNC2(p, "%jdd", t / DAY);
			t %= DAY;
		}
		if (tx >= HOUR && (t != 0 || prec != 0)) {
			p += FUNC2(p, "%jdh", t / HOUR);
			t %= HOUR;
		}
		if (tx >= MINUTE && (t != 0 || prec != 0)) {
			p += FUNC2(p, "%jdm", t / MINUTE);
			t %= MINUTE;
		}
		if (t != 0 || tx == 0 || prec != 0)
			p += FUNC2(p, "%jds", t);
	} else  {
		p += FUNC2(p, "%jd", (intmax_t)t);
	}
	if (prec != 0) {
		for (i = prec; i < 9; i++)
			nsec /= 10;
		p += FUNC2(p, ".%.*d", prec, nsec);
	}
	ret = FUNC1(io, pi, buf, p - buf);
	FUNC0(io);
	return (ret);
}