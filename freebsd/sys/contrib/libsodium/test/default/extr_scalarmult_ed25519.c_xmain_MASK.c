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

/* Variables and functions */
 int /*<<< orphan*/  B ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (unsigned char*,unsigned char*,unsigned char*) ; 
 scalar_t__ crypto_scalarmult_ed25519_BYTES ; 
 scalar_t__ crypto_scalarmult_ed25519_SCALARBYTES ; 
 int FUNC2 (unsigned char*,unsigned char*) ; 
 scalar_t__ FUNC3 () ; 
 scalar_t__ FUNC4 () ; 
 unsigned char* max_canonical_p ; 
 scalar_t__ FUNC5 (unsigned char*,unsigned char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (unsigned char*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (unsigned char*,int /*<<< orphan*/ ,scalar_t__) ; 
 unsigned char* non_canonical_invalid_p ; 
 unsigned char* non_canonical_p ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (unsigned char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (unsigned char*) ; 
 scalar_t__ FUNC11 (scalar_t__) ; 

int
FUNC12(void)
{
    unsigned char *n, *p, *q, *q2;

    n = (unsigned char *) FUNC11(crypto_scalarmult_ed25519_SCALARBYTES);
    p = (unsigned char *) FUNC11(crypto_scalarmult_ed25519_BYTES);
    q = (unsigned char *) FUNC11(crypto_scalarmult_ed25519_BYTES);
    q2 = (unsigned char *) FUNC11(crypto_scalarmult_ed25519_BYTES);

    FUNC9(n, crypto_scalarmult_ed25519_SCALARBYTES);
    if (FUNC2(q, n) != 0) {
        FUNC8("crypto_scalarmult_ed25519_base() failed\n");
    }
    FUNC6(p, B, crypto_scalarmult_ed25519_BYTES);
    if (FUNC1(q2, n, p) != 0) {
        FUNC8("crypto_scalarmult_ed25519() failed\n");
    }
    if (FUNC5(q, q2, crypto_scalarmult_ed25519_BYTES) != 0) {
        FUNC8("crypto_scalarmult_ed25519_base(n) != crypto_scalarmult_ed25519(n, 9)\n");
    }

    FUNC7(n, 0, crypto_scalarmult_ed25519_SCALARBYTES);
    if (FUNC2(q, n) != -1) {
        FUNC8("crypto_scalarmult_ed25519_base(0) failed\n");
    }
    if (FUNC1(q2, n, p) != -1) {
        FUNC8("crypto_scalarmult_ed25519(0) passed\n");
    }

    n[0] = 1;
    if (FUNC2(q, n) != 0) {
        FUNC8("crypto_scalarmult_ed25519_base() failed\n");
    }
    if (FUNC1(q2, n, p) != 0) {
        FUNC8("crypto_scalarmult_ed25519() passed\n");
    }

    if (FUNC1(q, n, non_canonical_p) != -1) {
        FUNC8("crypto_scalarmult_ed25519() didn't fail\n");
    }
    if (FUNC1(q, n, non_canonical_invalid_p) != -1) {
        FUNC8("crypto_scalarmult_ed25519() didn't fail\n");
    }
    if (FUNC1(q, n, max_canonical_p) != 0) {
        FUNC8("crypto_scalarmult_ed25519() failed\n");
    }

    FUNC7(p, 0, crypto_scalarmult_ed25519_BYTES);
    if (FUNC1(q, n, p) != -1) {
        FUNC8("crypto_scalarmult_ed25519() didn't fail\n");
    }
    n[0] = 8;
    if (FUNC1(q, n, p) != -1) {
        FUNC8("crypto_scalarmult_ed25519() didn't fail\n");
    }

    FUNC10(q2);
    FUNC10(q);
    FUNC10(p);
    FUNC10(n);

    FUNC0(crypto_scalarmult_ed25519_BYTES == FUNC3());
    FUNC0(crypto_scalarmult_ed25519_SCALARBYTES == FUNC4());

    FUNC8("OK\n");

    return 0;
}