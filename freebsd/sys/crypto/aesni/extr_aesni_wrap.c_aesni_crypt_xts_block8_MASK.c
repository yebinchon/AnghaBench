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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int __m128i ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int*,int) ; 
 int /*<<< orphan*/  FUNC2 (int,int const*,int,int,int,int,int,int,int,int,int*) ; 
 int /*<<< orphan*/  FUNC3 (int,int const*,int,int,int,int,int,int,int,int,int*) ; 

__attribute__((used)) static void
FUNC4(int rounds, const __m128i *key_schedule, __m128i *tweak,
    const uint8_t *from, uint8_t *to, int do_encrypt)
{
	__m128i tmptweak;
	__m128i a, b, c, d, e, f, g, h;
	__m128i tweaks[8];
	__m128i tmp[8];
	__m128i *top;
	const __m128i *fromp;

	tmptweak = *tweak;

	/*
	 * unroll the loop.  This lets gcc put values directly in the
	 * register and saves memory accesses.
	 */
	fromp = (const __m128i *)from;
#define PREPINP(v, pos) 					\
		do {						\
			tweaks[(pos)] = tmptweak;		\
			(v) = _mm_loadu_si128(&fromp[pos]) ^	\
			    tmptweak;				\
			tmptweak = xts_crank_lfsr(tmptweak);	\
		} while (0)
	PREPINP(a, 0);
	PREPINP(b, 1);
	PREPINP(c, 2);
	PREPINP(d, 3);
	PREPINP(e, 4);
	PREPINP(f, 5);
	PREPINP(g, 6);
	PREPINP(h, 7);
	*tweak = tmptweak;

	if (do_encrypt)
		FUNC3(rounds - 1, key_schedule, a, b, c, d, e, f, g, h,
		    tmp);
	else
		FUNC2(rounds - 1, key_schedule, a, b, c, d, e, f, g, h,
		    tmp);

	top = (__m128i *)to;
	FUNC1(&top[0], tmp[0] ^ tweaks[0]);
	FUNC1(&top[1], tmp[1] ^ tweaks[1]);
	FUNC1(&top[2], tmp[2] ^ tweaks[2]);
	FUNC1(&top[3], tmp[3] ^ tweaks[3]);
	FUNC1(&top[4], tmp[4] ^ tweaks[4]);
	FUNC1(&top[5], tmp[5] ^ tweaks[5]);
	FUNC1(&top[6], tmp[6] ^ tweaks[6]);
	FUNC1(&top[7], tmp[7] ^ tweaks[7]);
}