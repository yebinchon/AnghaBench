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
 int FUNC0 (int const*) ; 
 int /*<<< orphan*/  FUNC1 (int*,int) ; 
 int FUNC2 (int,int const*,int) ; 
 int FUNC3 (int,int const*,int) ; 
 int FUNC4 (int) ; 

__attribute__((used)) static void
FUNC5(int rounds, const __m128i *key_schedule, __m128i *tweak,
    const uint8_t *from, uint8_t *to, int do_encrypt)
{
	__m128i block;

	block = FUNC0((const __m128i *)from) ^ *tweak;

	if (do_encrypt)
		block = FUNC3(rounds - 1, key_schedule, block);
	else
		block = FUNC2(rounds - 1, key_schedule, block);

	FUNC1((__m128i *)to, block ^ *tweak);

	*tweak = FUNC4(*tweak);
}