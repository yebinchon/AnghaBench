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
typedef  int uint8_t ;
typedef  int /*<<< orphan*/  fe51 ;
typedef  int /*<<< orphan*/  e ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int const*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int*,int const*,int) ; 
 scalar_t__ FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 (int*,int const*,int const*) ; 

__attribute__((used)) static void FUNC16(uint8_t out[32], const uint8_t scalar[32],
                               const uint8_t point[32])
{
    fe51 x1, x2, z2, x3, z3, tmp0, tmp1;
    uint8_t e[32];
    unsigned swap = 0;
    int pos;

# ifdef BASE_2_64_IMPLEMENTED
    if (x25519_fe64_eligible()) {
        x25519_scalar_mulx(out, scalar, point);
        return;
    }
# endif

    FUNC13(e, scalar, 32);
    e[0]  &= 0xf8;
    e[31] &= 0x7f;
    e[31] |= 0x40;
    FUNC6(x1, point);
    FUNC2(x2);
    FUNC1(z2);
    FUNC4(x3, x1);
    FUNC2(z3);

    for (pos = 254; pos >= 0; --pos) {
        unsigned int b = 1 & (e[pos / 8] >> (pos & 7));

        swap ^= b;
        FUNC5(x2, x3, swap);
        FUNC5(z2, z3, swap);
        swap = b;
        FUNC11(tmp0, x3, z3);
        FUNC11(tmp1, x2, z2);
        FUNC3(x2, x2, z2);
        FUNC3(z2, x3, z3);
        FUNC8(z3, tmp0, x2);
        FUNC8(z2, z2, tmp1);
        FUNC10(tmp0, tmp1);
        FUNC10(tmp1, x2);
        FUNC3(x3, z3, z2);
        FUNC11(z2, z3, z2);
        FUNC8(x2, tmp1, tmp0);
        FUNC11(tmp1, tmp1, tmp0);
        FUNC10(z2, z2);
        FUNC9(z3, tmp1);
        FUNC10(x3, x3);
        FUNC3(tmp0, tmp0, z3);
        FUNC8(z3, x1, z2);
        FUNC8(z2, tmp1, tmp0);
    }

    FUNC7(z2, z2);
    FUNC8(x2, x2, z2);
    FUNC12(out, x2);

    FUNC0(e, sizeof(e));
}