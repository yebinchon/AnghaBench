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
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC8(__m128i H1, __m128i H2, __m128i H3, __m128i H4,
    __m128i X1, __m128i X2, __m128i X3, __m128i X4, __m128i *res)
{
	/*algorithm by Krzysztof Jankowski, Pierre Laurent - Intel*/
	__m128i H1_X1_lo, H1_X1_hi, H2_X2_lo, H2_X2_hi, H3_X3_lo,
	    H3_X3_hi, H4_X4_lo, H4_X4_hi, lo, hi;
	__m128i tmp0, tmp1, tmp2, tmp3;
	__m128i tmp4, tmp5, tmp6, tmp7;
	__m128i tmp8, tmp9;

	H1_X1_lo = FUNC0(H1, X1, 0x00);
	H2_X2_lo = FUNC0(H2, X2, 0x00);
	H3_X3_lo = FUNC0(H3, X3, 0x00);
	H4_X4_lo = FUNC0(H4, X4, 0x00);

	lo = FUNC7(H1_X1_lo, H2_X2_lo);
	lo = FUNC7(lo, H3_X3_lo);
	lo = FUNC7(lo, H4_X4_lo);

	H1_X1_hi = FUNC0(H1, X1, 0x11);
	H2_X2_hi = FUNC0(H2, X2, 0x11);
	H3_X3_hi = FUNC0(H3, X3, 0x11);
	H4_X4_hi = FUNC0(H4, X4, 0x11);

	hi = FUNC7(H1_X1_hi, H2_X2_hi);
	hi = FUNC7(hi, H3_X3_hi);
	hi = FUNC7(hi, H4_X4_hi);

	tmp0 = FUNC2(H1, 78);
	tmp4 = FUNC2(X1, 78);
	tmp0 = FUNC7(tmp0, H1);
	tmp4 = FUNC7(tmp4, X1);
	tmp1 = FUNC2(H2, 78);
	tmp5 = FUNC2(X2, 78);
	tmp1 = FUNC7(tmp1, H2);
	tmp5 = FUNC7(tmp5, X2);
	tmp2 = FUNC2(H3, 78);
	tmp6 = FUNC2(X3, 78);
	tmp2 = FUNC7(tmp2, H3);
	tmp6 = FUNC7(tmp6, X3);
	tmp3 = FUNC2(H4, 78);
	tmp7 = FUNC2(X4, 78);
	tmp3 = FUNC7(tmp3, H4);
	tmp7 = FUNC7(tmp7, X4);

	tmp0 = FUNC0(tmp0, tmp4, 0x00);
	tmp1 = FUNC0(tmp1, tmp5, 0x00);
	tmp2 = FUNC0(tmp2, tmp6, 0x00);
	tmp3 = FUNC0(tmp3, tmp7, 0x00);

	tmp0 = FUNC7(tmp0, lo);
	tmp0 = FUNC7(tmp0, hi);
	tmp0 = FUNC7(tmp1, tmp0);
	tmp0 = FUNC7(tmp2, tmp0);
	tmp0 = FUNC7(tmp3, tmp0);

	tmp4 = FUNC4(tmp0, 8);
	tmp0 = FUNC6(tmp0, 8);

	lo = FUNC7(tmp4, lo);
	hi = FUNC7(tmp0, hi);

	tmp3 = lo;
	tmp6 = hi;

	tmp7 = FUNC5(tmp3, 31);
	tmp8 = FUNC5(tmp6, 31);
	tmp3 = FUNC3(tmp3, 1);
	tmp6 = FUNC3(tmp6, 1);

	tmp9 = FUNC6(tmp7, 12);
	tmp8 = FUNC4(tmp8, 4);
	tmp7 = FUNC4(tmp7, 4);
	tmp3 = FUNC1(tmp3, tmp7);
	tmp6 = FUNC1(tmp6, tmp8);
	tmp6 = FUNC1(tmp6, tmp9);

	tmp7 = FUNC3(tmp3, 31);
	tmp8 = FUNC3(tmp3, 30);
	tmp9 = FUNC3(tmp3, 25);

	tmp7 = FUNC7(tmp7, tmp8);
	tmp7 = FUNC7(tmp7, tmp9);
	tmp8 = FUNC6(tmp7, 4);
	tmp7 = FUNC4(tmp7, 12);
	tmp3 = FUNC7(tmp3, tmp7);

	tmp2 = FUNC5(tmp3, 1);
	tmp4 = FUNC5(tmp3, 2);
	tmp5 = FUNC5(tmp3, 7);
	tmp2 = FUNC7(tmp2, tmp4);
	tmp2 = FUNC7(tmp2, tmp5);
	tmp2 = FUNC7(tmp2, tmp8);
	tmp3 = FUNC7(tmp3, tmp2);
	tmp6 = FUNC7(tmp6, tmp3);

	*res = tmp6;
}