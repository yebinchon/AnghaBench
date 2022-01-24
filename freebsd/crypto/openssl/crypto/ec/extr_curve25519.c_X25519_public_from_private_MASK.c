#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
struct TYPE_3__ {int /*<<< orphan*/  Y; int /*<<< orphan*/  Z; } ;
typedef  TYPE_1__ ge_p3 ;
typedef  int /*<<< orphan*/  fe ;
typedef  int /*<<< orphan*/  e ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int*) ; 
 int /*<<< orphan*/  FUNC7 (int*,int const*,int) ; 

void FUNC8(uint8_t out_public_value[32],
                                const uint8_t private_key[32])
{
    uint8_t e[32];
    ge_p3 A;
    fe zplusy, zminusy, zminusy_inv;

    FUNC7(e, private_key, 32);
    e[0] &= 248;
    e[31] &= 127;
    e[31] |= 64;

    FUNC6(&A, e);

    /*
     * We only need the u-coordinate of the curve25519 point.
     * The map is u=(y+1)/(1-y). Since y=Y/Z, this gives
     * u=(Z+Y)/(Z-Y).
     */
    FUNC1(zplusy, A.Z, A.Y);
    FUNC4(zminusy, A.Z, A.Y);
    FUNC2(zminusy_inv, zminusy);
    FUNC3(zplusy, zplusy, zminusy_inv);
    FUNC5(out_public_value, zplusy);

    FUNC0(e, sizeof(e));
}