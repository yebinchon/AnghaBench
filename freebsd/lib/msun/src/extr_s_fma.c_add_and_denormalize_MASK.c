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
struct dd {scalar_t__ lo; scalar_t__ hi; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int) ; 
 struct dd FUNC2 (double,double) ; 
 double FUNC3 (scalar_t__,int) ; 

__attribute__((used)) static inline double
FUNC4(double a, double b, int scale)
{
	struct dd sum;
	uint64_t hibits, lobits;
	int bits_lost;

	sum = FUNC2(a, b);

	/*
	 * If we are losing at least two bits of accuracy to denormalization,
	 * then the first lost bit becomes a round bit, and we adjust the
	 * lowest bit of sum.hi to make it a sticky bit summarizing all the
	 * bits in sum.lo. With the sticky bit adjusted, the hardware will
	 * break any ties in the correct direction.
	 *
	 * If we are losing only one bit to denormalization, however, we must
	 * break the ties manually.
	 */
	if (sum.lo != 0) {
		FUNC0(hibits, sum.hi);
		bits_lost = -((int)(hibits >> 52) & 0x7ff) - scale + 1;
		if ((bits_lost != 1) ^ (int)(hibits & 1)) {
			/* hibits += (int)copysign(1.0, sum.hi * sum.lo) */
			FUNC0(lobits, sum.lo);
			hibits += 1 - (((hibits ^ lobits) >> 62) & 2);
			FUNC1(sum.hi, hibits);
		}
	}
	return (FUNC3(sum.hi, scale));
}