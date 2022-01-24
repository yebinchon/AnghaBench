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
typedef  int /*<<< orphan*/  __m128i ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC7(__m128i a, __m128i b, __m128i *res)
{
	__m128i tmp2, tmp3, tmp4, tmp5, tmp6, tmp7, tmp8, tmp9;

	tmp3 = FUNC0(a, b, 0x00);
	tmp4 = FUNC0(a, b, 0x10);
	tmp5 = FUNC0(a, b, 0x01);
	tmp6 = FUNC0(a, b, 0x11);

	tmp4 = FUNC6(tmp4, tmp5);
	tmp5 = FUNC3(tmp4, 8);
	tmp4 = FUNC5(tmp4, 8);
	tmp3 = FUNC6(tmp3, tmp5);
	tmp6 = FUNC6(tmp6, tmp4);

	tmp7 = FUNC4(tmp3, 31);
	tmp8 = FUNC4(tmp6, 31);
	tmp3 = FUNC2(tmp3, 1);
	tmp6 = FUNC2(tmp6, 1);

	tmp9 = FUNC5(tmp7, 12);
	tmp8 = FUNC3(tmp8, 4);
	tmp7 = FUNC3(tmp7, 4);
	tmp3 = FUNC1(tmp3, tmp7);
	tmp6 = FUNC1(tmp6, tmp8);
	tmp6 = FUNC1(tmp6, tmp9);

	tmp7 = FUNC2(tmp3, 31);
	tmp8 = FUNC2(tmp3, 30);
	tmp9 = FUNC2(tmp3, 25);

	tmp7 = FUNC6(tmp7, tmp8);
	tmp7 = FUNC6(tmp7, tmp9);
	tmp8 = FUNC5(tmp7, 4);
	tmp7 = FUNC3(tmp7, 12);
	tmp3 = FUNC6(tmp3, tmp7);

	tmp2 = FUNC4(tmp3, 1);
	tmp4 = FUNC4(tmp3, 2);
	tmp5 = FUNC4(tmp3, 7);
	tmp2 = FUNC6(tmp2, tmp4);
	tmp2 = FUNC6(tmp2, tmp5);
	tmp2 = FUNC6(tmp2, tmp8);
	tmp3 = FUNC6(tmp3, tmp2);
	tmp6 = FUNC6(tmp6, tmp3);

	*res = tmp6;
}