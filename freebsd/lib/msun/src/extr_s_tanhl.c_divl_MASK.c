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
 int /*<<< orphan*/  FUNC0 (long double,long double) ; 

__attribute__((used)) static inline long double
FUNC1(long double a, long double b, long double c, long double d,
    long double e, long double f)
{
	long double inv, r;
	float fr, fw;

	FUNC0(a, c);
	b = b + c;
	FUNC0(d, f);
	e = e + f;

	inv = 1 / (d + e);

	r = (a + b) * inv;
	fr = r;
	r = fr;

	fw = d + e;
	e = d - fw + e;
	d = fw;

	r = r + (a - d * r + b - e * r) * inv;

	return r;
}