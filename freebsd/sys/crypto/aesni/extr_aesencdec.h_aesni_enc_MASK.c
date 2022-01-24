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
typedef  int __m128i ;

/* Variables and functions */
 int FUNC0 (int,int const) ; 
 int FUNC1 (int,int const) ; 

__attribute__((used)) static inline __m128i
FUNC2(int rounds, const __m128i *keysched, const __m128i from)
{
	__m128i tmp;
	int i;

	tmp = from ^ keysched[0];
	for (i = 1; i < rounds; i += 2) {
		tmp = FUNC0(tmp, keysched[i]);
		tmp = FUNC0(tmp, keysched[i + 1]);
	}

	tmp = FUNC0(tmp, keysched[rounds]);
	return FUNC1(tmp, keysched[rounds + 1]);
}