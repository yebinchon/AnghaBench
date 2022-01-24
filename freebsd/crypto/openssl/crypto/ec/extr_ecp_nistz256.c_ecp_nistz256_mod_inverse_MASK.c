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
typedef  int /*<<< orphan*/  res ;
typedef  int /*<<< orphan*/  const BN_ULONG ;

/* Variables and functions */
 int P256_LIMBS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int) ; 

__attribute__((used)) static void FUNC3(BN_ULONG r[P256_LIMBS],
                                     const BN_ULONG in[P256_LIMBS])
{
    /*
     * The poly is ffffffff 00000001 00000000 00000000 00000000 ffffffff
     * ffffffff ffffffff We use FLT and used poly-2 as exponent
     */
    BN_ULONG p2[P256_LIMBS];
    BN_ULONG p4[P256_LIMBS];
    BN_ULONG p8[P256_LIMBS];
    BN_ULONG p16[P256_LIMBS];
    BN_ULONG p32[P256_LIMBS];
    BN_ULONG res[P256_LIMBS];
    int i;

    FUNC1(res, in);
    FUNC0(p2, res, in);         /* 3*p */

    FUNC1(res, p2);
    FUNC1(res, res);
    FUNC0(p4, res, p2);         /* f*p */

    FUNC1(res, p4);
    FUNC1(res, res);
    FUNC1(res, res);
    FUNC1(res, res);
    FUNC0(p8, res, p4);         /* ff*p */

    FUNC1(res, p8);
    for (i = 0; i < 7; i++)
        FUNC1(res, res);
    FUNC0(p16, res, p8);        /* ffff*p */

    FUNC1(res, p16);
    for (i = 0; i < 15; i++)
        FUNC1(res, res);
    FUNC0(p32, res, p16);       /* ffffffff*p */

    FUNC1(res, p32);
    for (i = 0; i < 31; i++)
        FUNC1(res, res);
    FUNC0(res, res, in);

    for (i = 0; i < 32 * 4; i++)
        FUNC1(res, res);
    FUNC0(res, res, p32);

    for (i = 0; i < 32; i++)
        FUNC1(res, res);
    FUNC0(res, res, p32);

    for (i = 0; i < 16; i++)
        FUNC1(res, res);
    FUNC0(res, res, p16);

    for (i = 0; i < 8; i++)
        FUNC1(res, res);
    FUNC0(res, res, p8);

    FUNC1(res, res);
    FUNC1(res, res);
    FUNC1(res, res);
    FUNC1(res, res);
    FUNC0(res, res, p4);

    FUNC1(res, res);
    FUNC1(res, res);
    FUNC0(res, res, p2);

    FUNC1(res, res);
    FUNC1(res, res);
    FUNC0(res, res, in);

    FUNC2(r, res, sizeof(res));
}