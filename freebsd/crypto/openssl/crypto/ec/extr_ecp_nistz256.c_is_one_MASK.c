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
typedef  int BN_ULONG ;
typedef  int /*<<< orphan*/  BIGNUM ;

/* Variables and functions */
 int* ONE ; 
 int P256_LIMBS ; 
 int FUNC0 (int /*<<< orphan*/  const*) ; 
 int* FUNC1 (int /*<<< orphan*/  const*) ; 
 int FUNC2 (int) ; 

__attribute__((used)) static BN_ULONG FUNC3(const BIGNUM *z)
{
    BN_ULONG res = 0;
    BN_ULONG *a = FUNC1(z);

    if (FUNC0(z) == (P256_LIMBS - P256_LIMBS / 8)) {
        res = a[0] ^ ONE[0];
        res |= a[1] ^ ONE[1];
        res |= a[2] ^ ONE[2];
        res |= a[3] ^ ONE[3];
        if (P256_LIMBS == 8) {
            res |= a[4] ^ ONE[4];
            res |= a[5] ^ ONE[5];
            res |= a[6] ^ ONE[6];
            /*
             * no check for a[7] (being zero) on 32-bit platforms,
             * because value of "one" takes only 7 limbs.
             */
        }
        res = FUNC2(res);
    }

    return res;
}