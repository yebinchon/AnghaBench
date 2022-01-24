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
typedef  int /*<<< orphan*/  crypto_hash_sha512_state ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned char const*,unsigned long long) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned char const*) ; 
 int /*<<< orphan*/  FUNC5 (unsigned char*,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC6 (unsigned char*,unsigned char const*,size_t) ; 
 int /*<<< orphan*/  FUNC7 (unsigned char*,unsigned char*,unsigned char*,unsigned char const*) ; 
 int /*<<< orphan*/  FUNC8 (unsigned char*) ; 
 int /*<<< orphan*/  FUNC9 (unsigned char*,int) ; 

int
FUNC10(unsigned char       *sm,
                                    unsigned long long  *smlen_p,
                                    const unsigned char *m,
                                    unsigned long long   mlen,
                                    const unsigned char *sk)
{
    crypto_hash_sha512_state hs;
    unsigned char            nonce[64];
    unsigned char            hram[64];
    unsigned char            sig[64];
    ge25519_p3               A;
    ge25519_p3               R;

    FUNC1(&hs);
    FUNC2(&hs, sk + 32, 32);
    FUNC2(&hs, m, mlen);
    FUNC0(&hs, nonce);
    FUNC4(&A, sk);
    FUNC3(sig + 32, &A);
    FUNC8(nonce);
    FUNC4(&R, nonce);
    FUNC3(sig, &R);
    FUNC1(&hs);
    FUNC2(&hs, sig, 32);
    FUNC2(&hs, m, mlen);
    FUNC0(&hs, hram);
    FUNC8(hram);
    FUNC7(sig + 32, hram, nonce, sk);
    FUNC9(hram, sizeof hram);
    FUNC6(sm + 32, m, (size_t) mlen);
    FUNC5(sm, sig, 32);
    FUNC5(sm + 32 + mlen, sig + 32, 32);
    *smlen_p = mlen + 64U;

    return 0;
}