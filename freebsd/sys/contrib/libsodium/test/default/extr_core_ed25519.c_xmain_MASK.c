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
 int /*<<< orphan*/  FUNC0 (unsigned char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ crypto_core_ed25519_BYTES ; 
 scalar_t__ crypto_core_ed25519_UNIFORMBYTES ; 
 int FUNC2 (unsigned char*,unsigned char*,unsigned char*) ; 
 scalar_t__ FUNC3 () ; 
 scalar_t__ FUNC4 (unsigned char*,unsigned char*) ; 
 int FUNC5 (unsigned char*) ; 
 int FUNC6 (unsigned char*,unsigned char*,unsigned char*) ; 
 scalar_t__ FUNC7 () ; 
 scalar_t__ FUNC8 (unsigned char*,unsigned char*,unsigned char*) ; 
 scalar_t__ crypto_scalarmult_ed25519_SCALARBYTES ; 
 unsigned char* max_canonical_p ; 
 scalar_t__ FUNC9 (unsigned char*,unsigned char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (unsigned char*,unsigned char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (unsigned char*,int /*<<< orphan*/ ,scalar_t__) ; 
 unsigned char* non_canonical_invalid_p ; 
 unsigned char* non_canonical_p ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 
 int /*<<< orphan*/  FUNC13 (unsigned char*,scalar_t__) ; 
 scalar_t__ FUNC14 (int) ; 
 int /*<<< orphan*/  FUNC15 (unsigned char*) ; 
 scalar_t__ FUNC16 (scalar_t__) ; 

int
FUNC17(void)
{
    unsigned char *h;
    unsigned char *p, *p2, *p3;
    unsigned char *sc;
    int            i, j;

    h = (unsigned char *) FUNC16(crypto_core_ed25519_UNIFORMBYTES);
    p = (unsigned char *) FUNC16(crypto_core_ed25519_BYTES);
    for (i = 0; i < 1000; i++) {
        FUNC13(h, crypto_core_ed25519_UNIFORMBYTES);
        if (FUNC4(p, h) != 0) {
            FUNC12("crypto_core_ed25519_from_uniform() failed\n");
        }
        if (FUNC5(p) == 0) {
            FUNC12("crypto_core_ed25519_from_uniform() returned an invalid point\n");
        }
    }

    p2 = (unsigned char *) FUNC16(crypto_core_ed25519_BYTES);
    p3 = (unsigned char *) FUNC16(crypto_core_ed25519_BYTES);
    FUNC13(h, crypto_core_ed25519_UNIFORMBYTES);
    FUNC4(p2, h);

    j = 1 + (int) FUNC14(100);
    FUNC10(p3, p, crypto_core_ed25519_BYTES);
    for (i = 0; i < j; i++) {
        FUNC2(p, p, p2);
        if (FUNC5(p) != 1) {
            FUNC12("crypto_core_add() returned an invalid point\n");
        }
    }
    if (FUNC9(p, p3, crypto_core_ed25519_BYTES) == 0) {
        FUNC12("crypto_core_add() failed\n");
    }
    for (i = 0; i < j; i++) {
        FUNC6(p, p, p2);
    }
    if (FUNC9(p, p3, crypto_core_ed25519_BYTES) != 0) {
        FUNC12("crypto_core_add() or crypto_core_sub() failed\n");
    }
    sc = (unsigned char *) FUNC16(crypto_scalarmult_ed25519_SCALARBYTES);
    FUNC11(sc, 0, crypto_scalarmult_ed25519_SCALARBYTES);
    sc[0] = 8;
    FUNC10(p2, p, crypto_core_ed25519_BYTES);
    FUNC10(p3, p, crypto_core_ed25519_BYTES);

    for (i = 0; i < 254; i++) {
        FUNC2(p2, p2, p2);
    }
    for (i = 0; i < 8; i++) {
        FUNC2(p2, p2, p);
    }
    if (FUNC8(p3, sc, p) != 0) {
        FUNC12("crypto_scalarmult_ed25519() failed\n");
    }
    if (FUNC9(p2, p3, crypto_core_ed25519_BYTES) != 0) {
        FUNC12("crypto_scalarmult_ed25519() is inconsistent with crypto_core_ed25519_add()\n");
    }

    FUNC1(FUNC5(p) == 1);

    FUNC11(p, 0, crypto_core_ed25519_BYTES);
    FUNC1(FUNC5(p) == 0);

    p[0] = 1;
    FUNC1(FUNC5(p) == 0);

    p[0] = 2;
    FUNC1(FUNC5(p) == 0);

    p[0] = 9;
    FUNC1(FUNC5(p) == 1);

    FUNC1(FUNC5(max_canonical_p) == 1);
    FUNC1(FUNC5(non_canonical_invalid_p) == 0);
    FUNC1(FUNC5(non_canonical_p) == 0);

    FUNC10(p2, p, crypto_core_ed25519_BYTES);
    FUNC0(p2);
    FUNC2(p3, p2, p2);
    FUNC6(p3, p3, p2);
    FUNC1(FUNC9(p2, p, crypto_core_ed25519_BYTES) != 0);
    FUNC1(FUNC9(p3, p, crypto_core_ed25519_BYTES) == 0);

    p[0] = 2;
    FUNC1(FUNC2(p3, p2, p) == -1);
    FUNC1(FUNC2(p3, p2, non_canonical_p) == 0);
    FUNC1(FUNC2(p3, p2, non_canonical_invalid_p) == -1);
    FUNC1(FUNC2(p3, p, p3) == -1);
    FUNC1(FUNC2(p3, non_canonical_p, p3) == 0);
    FUNC1(FUNC2(p3, non_canonical_invalid_p, p3) == -1);

    FUNC1(FUNC6(p3, p2, p) == -1);
    FUNC1(FUNC6(p3, p2, non_canonical_p) == 0);
    FUNC1(FUNC6(p3, p2, non_canonical_invalid_p) == -1);
    FUNC1(FUNC6(p3, p, p3) == -1);
    FUNC1(FUNC6(p3, non_canonical_p, p3) == 0);
    FUNC1(FUNC6(p3, non_canonical_invalid_p, p3) == -1);

    FUNC15(sc);
    FUNC15(p3);
    FUNC15(p2);
    FUNC15(p);
    FUNC15(h);

    FUNC1(crypto_core_ed25519_BYTES == FUNC3());
    FUNC1(crypto_core_ed25519_UNIFORMBYTES == FUNC7());
    FUNC1(crypto_core_ed25519_UNIFORMBYTES >= crypto_core_ed25519_BYTES);

    FUNC12("OK\n");

    return 0;
}