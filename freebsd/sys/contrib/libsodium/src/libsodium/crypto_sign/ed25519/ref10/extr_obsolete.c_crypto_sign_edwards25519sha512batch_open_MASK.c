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
typedef  int /*<<< orphan*/  ge25519_cached ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned char*,unsigned char const*,unsigned long long) ; 
 unsigned long long crypto_sign_edwards25519sha512batch_MESSAGEBYTES_MAX ; 
 scalar_t__ FUNC1 (unsigned char*,unsigned char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,unsigned char const*) ; 
 scalar_t__ FUNC4 (unsigned char const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (unsigned char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned char const*) ; 
 int /*<<< orphan*/  FUNC10 (unsigned char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (unsigned char*,unsigned char const*,unsigned long long) ; 
 int /*<<< orphan*/  FUNC12 (unsigned char*) ; 

int
FUNC13(unsigned char       *m,
                                         unsigned long long  *mlen_p,
                                         const unsigned char *sm,
                                         unsigned long long   smlen,
                                         const unsigned char *pk)
{
    unsigned char      h[64];
    unsigned char      t1[32], t2[32];
    unsigned long long mlen;
    ge25519_cached     Ai;
    ge25519_p1p1       csa;
    ge25519_p2         cs;
    ge25519_p3         A;
    ge25519_p3         R;
    ge25519_p3         cs3;

    *mlen_p = 0;
    if (smlen < 64 || smlen - 64 > crypto_sign_edwards25519sha512batch_MESSAGEBYTES_MAX) {
        return -1;
    }
    mlen = smlen - 64;
    if (sm[smlen - 1] & 224) {
        return -1;
    }
    if (FUNC4(pk) != 0 ||
        FUNC3(&A, pk) != 0 ||
        FUNC4(sm) != 0 ||
        FUNC3(&R, sm) != 0) {
        return -1;
    }
    FUNC6(&Ai, &A);
    FUNC0(h, sm, mlen + 32);
    FUNC12(h);
    FUNC8(&cs3, h, &R);
    FUNC2(&csa, &cs3, &Ai);
    FUNC5(&cs, &csa);
    FUNC10(t1, &cs);
    t1[31] ^= 1 << 7;
    FUNC9(&R, sm + 32 + mlen);
    FUNC7(t2, &R);
    if (FUNC1(t1, t2) != 0) {
        return -1;
    }
    *mlen_p = mlen;
    FUNC11(m, sm + 32, mlen);

    return 0;
}