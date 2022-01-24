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
struct TYPE_3__ {scalar_t__ version; int /*<<< orphan*/  prime_infos; int /*<<< orphan*/  n; } ;
typedef  TYPE_1__ RSA ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int,int) ; 
 scalar_t__ RSA_ASN1_VERSION_MULTI ; 
 int FUNC2 (int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 

int FUNC4(const RSA *rsa)
{
    int bits = FUNC0(rsa->n);

    if (rsa->version == RSA_ASN1_VERSION_MULTI) {
        /* This ought to mean that we have private key at hand. */
        int ex_primes = FUNC3(rsa->prime_infos);

        if (ex_primes <= 0 || (ex_primes + 2) > FUNC2(bits))
            return 0;
    }
    return FUNC1(bits, -1);
}