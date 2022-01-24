#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int manl; } ;
union IEEEl2bits {long double e; TYPE_1__ bits; } ;
struct dd {int lo; long double hi; } ;

/* Variables and functions */
 int INFINITY ; 
 struct dd FUNC0 (long double,long double) ; 
 long double FUNC1 (long double,int) ; 

__attribute__((used)) static inline long double
FUNC2(long double a, long double b)
{
	struct dd sum;
	union IEEEl2bits u;

	sum = FUNC0(a, b);
	if (sum.lo != 0) {
		u.e = sum.hi;
		if ((u.bits.manl & 1) == 0)
			sum.hi = FUNC1(sum.hi, INFINITY * sum.lo);
	}
	return (sum.hi);
}