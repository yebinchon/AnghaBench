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
 int /*<<< orphan*/  FUNC0 (unsigned char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned char*,unsigned char*) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char*,unsigned char const*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned char const*,unsigned long long) ; 
 int /*<<< orphan*/  FUNC6 (unsigned char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned char*) ; 
 int /*<<< orphan*/  FUNC8 (unsigned char*,unsigned char const*,int) ; 
 int /*<<< orphan*/  FUNC9 (unsigned char*,unsigned char const*,int) ; 
 int /*<<< orphan*/  FUNC10 (unsigned char*,unsigned char*,unsigned char*,unsigned char*) ; 
 int /*<<< orphan*/  FUNC11 (unsigned char*) ; 
 int /*<<< orphan*/  FUNC12 (unsigned char*,int) ; 

int
FUNC13(unsigned char *sig, unsigned long long *siglen_p,
                              const unsigned char *m, unsigned long long mlen,
                              const unsigned char *sk, int prehashed)
{
    crypto_hash_sha512_state hs;
    unsigned char            az[64];
    unsigned char            nonce[64];
    unsigned char            hram[64];
    ge25519_p3               R;

    FUNC1(&hs, prehashed);

#ifdef ED25519_NONDETERMINISTIC
    memcpy(az, sk, 32);
    _crypto_sign_ed25519_synthetic_r_hv(&hs, nonce, az);
#else
    FUNC3(az, sk, 32);
    FUNC5(&hs, az + 32, 32);
#endif

    FUNC5(&hs, m, mlen);
    FUNC4(&hs, nonce);

    FUNC9(sig + 32, sk + 32, 32);

    FUNC11(nonce);
    FUNC7(&R, nonce);
    FUNC6(sig, &R);

    FUNC1(&hs, prehashed);
    FUNC5(&hs, sig, 64);
    FUNC5(&hs, m, mlen);
    FUNC4(&hs, hram);

    FUNC11(hram);
    FUNC0(az);
    FUNC10(sig + 32, hram, az, nonce);

    FUNC12(az, sizeof az);
    FUNC12(nonce, sizeof nonce);

    if (siglen_p != NULL) {
        *siglen_p = 64U;
    }
    return 0;
}