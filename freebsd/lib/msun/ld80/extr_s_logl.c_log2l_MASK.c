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
struct ld {long double hi; long double lo; int /*<<< orphan*/  lo_set; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (long double*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (long double,long double) ; 
 int /*<<< orphan*/  FUNC3 (long double) ; 
 int /*<<< orphan*/  FUNC4 (long double,long double) ; 
 long double invln2_hi ; 
 long double invln2_lo ; 
 int /*<<< orphan*/  FUNC5 (long double,struct ld*) ; 

long double
FUNC6(long double x)
{
	struct ld r;
	long double hi, lo;

	FUNC1();
	FUNC0(&x);
	FUNC5(x, &r);
	if (!r.lo_set)
		FUNC3(r.hi);
	FUNC4(r.hi, r.lo);
	hi = (float)r.hi;
	lo = r.lo + (r.hi - hi);
	FUNC2(invln2_hi * hi,
	    (invln2_lo + invln2_hi) * lo + invln2_lo * hi);
}