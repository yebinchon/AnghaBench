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
typedef  int /*<<< orphan*/  ge25519_p3 ;
typedef  int /*<<< orphan*/  ge25519_p2 ;
typedef  int /*<<< orphan*/  ge25519_p1p1 ;
typedef  int /*<<< orphan*/ * fe25519 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * curve25519_A ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (unsigned char*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ *,unsigned char*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (unsigned char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (unsigned char*,unsigned char const*,int) ; 

void
FUNC21(unsigned char s[32], const unsigned char r[32])
{
    fe25519       e;
    fe25519       negx;
    fe25519       rr2;
    fe25519       x, x2, x3;
    ge25519_p3    p3;
    ge25519_p1p1  p1;
    ge25519_p2    p2;
    unsigned int  e_is_minus_1;
    unsigned char x_sign;

    FUNC20(s, r, 32);
    x_sign = s[31] & 0x80;
    s[31] &= 0x7f;

    FUNC6(rr2, s);

    /* elligator */
    FUNC11(rr2, rr2);
    rr2[0]++;
    FUNC7(rr2, rr2);
    FUNC8(x, curve25519_A, rr2);
    FUNC9(x, x);

    FUNC10(x2, x);
    FUNC8(x3, x, x2);
    FUNC4(e, x3, x);
    FUNC8(x2, x2, curve25519_A);
    FUNC4(e, x2, e);

    FUNC1(e, e);

    FUNC13(s, e);
    e_is_minus_1 = s[1] & 1;
    FUNC9(negx, x);
    FUNC5(x, negx, e_is_minus_1);
    FUNC2(x2);
    FUNC5(x2, curve25519_A, e_is_minus_1);
    FUNC12(x, x, x2);

    /* yed = (x-1)/(x+1) */
    {
        fe25519 one;
        fe25519 x_plus_one;
        fe25519 x_plus_one_inv;
        fe25519 x_minus_one;
        fe25519 yed;

        FUNC3(one);
        FUNC4(x_plus_one, x, one);
        FUNC12(x_minus_one, x, one);
        FUNC7(x_plus_one_inv, x_plus_one);
        FUNC8(yed, x_minus_one, x_plus_one_inv);
        FUNC13(s, yed);
    }

    /* recover x */
    s[31] |= x_sign;
    if (FUNC14(&p3, s) != 0) {
        FUNC0(); /* LCOV_EXCL_LINE */
    }

    /* multiply by the cofactor */
    FUNC18(&p1, &p3);
    FUNC15(&p2, &p1);
    FUNC17(&p1, &p2);
    FUNC15(&p2, &p1);
    FUNC17(&p1, &p2);
    FUNC16(&p3, &p1);

    FUNC19(s, &p3);
}