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
typedef  unsigned int uint32_t ;
typedef  int /*<<< orphan*/  int32_t ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int) ; 

int32_t
FUNC3(
	int32_t years
	)
{
	/* We use the in-out-in algorithm here, using the one's
	 * complement division trick for negative numbers. The chained
	 * division sequence by 4/25/4 gives the compiler the chance to
	 * get away with only one true division and doing shifts otherwise.
	 */

	uint32_t sflag, sum, uyear;

	sflag = FUNC0(years);
	uyear = FUNC1(years);
	uyear ^= sflag;

	sum  = (uyear /=  4u);	/*   4yr rule --> IN  */
	sum -= (uyear /= 25u);	/* 100yr rule --> OUT */
	sum += (uyear /=  4u);	/* 400yr rule --> IN  */

	/* Thanks to the alternation of IN/OUT/IN we can do the sum
	 * directly and have a single one's complement operation
	 * here. (Only if the years are negative, of course.) Otherwise
	 * the one's complement would have to be done when
	 * adding/subtracting the terms.
	 */
	return FUNC2(sflag ^ sum);
}