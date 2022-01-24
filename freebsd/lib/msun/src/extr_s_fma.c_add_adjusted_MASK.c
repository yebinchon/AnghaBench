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
typedef  int uint64_t ;
struct dd {scalar_t__ lo; double hi; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,double) ; 
 int /*<<< orphan*/  FUNC1 (double,int) ; 
 struct dd FUNC2 (double,double) ; 

__attribute__((used)) static inline double
FUNC3(double a, double b)
{
	struct dd sum;
	uint64_t hibits, lobits;

	sum = FUNC2(a, b);
	if (sum.lo != 0) {
		FUNC0(hibits, sum.hi);
		if ((hibits & 1) == 0) {
			/* hibits += (int)copysign(1.0, sum.hi * sum.lo) */
			FUNC0(lobits, sum.lo);
			hibits += 1 - ((hibits ^ lobits) >> 62);
			FUNC1(sum.hi, hibits);
		}
	}
	return (sum.hi);
}