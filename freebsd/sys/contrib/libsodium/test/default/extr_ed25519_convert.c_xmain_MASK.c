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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*,int /*<<< orphan*/ ,int) ; 
 int crypto_hash_sha512_BYTES ; 
 int crypto_scalarmult_curve25519_BYTES ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*,unsigned char*) ; 
 int crypto_sign_ed25519_PUBLICKEYBYTES ; 
 int crypto_sign_ed25519_SECRETKEYBYTES ; 
 int crypto_sign_ed25519_SEEDBYTES ; 
 int /*<<< orphan*/  FUNC3 (unsigned char*,unsigned char*) ; 
 int FUNC4 (unsigned char*,unsigned char*) ; 
 int /*<<< orphan*/  FUNC5 (unsigned char*,unsigned char*,unsigned char*) ; 
 int /*<<< orphan*/  FUNC6 (unsigned char*,unsigned char*) ; 
 int /*<<< orphan*/  keypair_seed ; 
 scalar_t__ FUNC7 (unsigned char*,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC8 (unsigned char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (char*,...) ; 
 int /*<<< orphan*/  FUNC10 (char*,int,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC11 (unsigned char*,int,char*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

int
FUNC12(void)
{
    unsigned char ed25519_pk[crypto_sign_ed25519_PUBLICKEYBYTES];
    unsigned char ed25519_skpk[crypto_sign_ed25519_SECRETKEYBYTES];
    unsigned char curve25519_pk[crypto_scalarmult_curve25519_BYTES];
    unsigned char curve25519_pk2[crypto_scalarmult_curve25519_BYTES];
    unsigned char curve25519_sk[crypto_scalarmult_curve25519_BYTES];
    char          curve25519_pk_hex[crypto_scalarmult_curve25519_BYTES * 2 + 1];
    char          curve25519_sk_hex[crypto_scalarmult_curve25519_BYTES * 2 + 1];
    unsigned char hseed[crypto_hash_sha512_BYTES];
    unsigned int  i;

    FUNC0(crypto_sign_ed25519_SEEDBYTES <= crypto_hash_sha512_BYTES);
#ifdef ED25519_NONDETERMINISTIC
    crypto_hash_sha512(hseed, keypair_seed, crypto_sign_ed25519_SEEDBYTES);
#else
    FUNC8(hseed, keypair_seed, crypto_sign_ed25519_SEEDBYTES);
#endif
    FUNC5(ed25519_pk, ed25519_skpk, hseed);

    if (FUNC4(curve25519_pk, ed25519_pk) != 0) {
        FUNC9("conversion failed\n");
    }
    FUNC6(curve25519_sk, ed25519_skpk);
    FUNC10(curve25519_pk_hex, sizeof curve25519_pk_hex, curve25519_pk,
                   sizeof curve25519_pk);
    FUNC10(curve25519_sk_hex, sizeof curve25519_sk_hex, curve25519_sk,
                   sizeof curve25519_sk);

    FUNC9("curve25519 pk: [%s]\n", curve25519_pk_hex);
    FUNC9("curve25519 sk: [%s]\n", curve25519_sk_hex);

    for (i = 0U; i < 500U; i++) {
        FUNC3(ed25519_pk, ed25519_skpk);
        if (FUNC4(curve25519_pk, ed25519_pk) !=
            0) {
            FUNC9("conversion failed\n");
        }
        FUNC6(curve25519_sk, ed25519_skpk);
        FUNC2(curve25519_pk2, curve25519_sk);
        if (FUNC7(curve25519_pk, curve25519_pk2, sizeof curve25519_pk) != 0) {
            FUNC9("conversion failed\n");
        }
    }

    FUNC11(ed25519_pk, crypto_sign_ed25519_PUBLICKEYBYTES,
                   "0000000000000000000000000000000000000000000000000000000000000000"
                   "0000000000000000000000000000000000000000000000000000000000000000",
                   64, NULL, NULL, NULL);
    FUNC0(FUNC4(curve25519_pk, ed25519_pk) == -1);
    FUNC11(ed25519_pk, crypto_sign_ed25519_PUBLICKEYBYTES,
                   "0200000000000000000000000000000000000000000000000000000000000000"
                   "0000000000000000000000000000000000000000000000000000000000000000",
                   64, NULL, NULL, NULL);
    FUNC0(FUNC4(curve25519_pk, ed25519_pk) == -1);
    FUNC11(ed25519_pk, crypto_sign_ed25519_PUBLICKEYBYTES,
                   "0500000000000000000000000000000000000000000000000000000000000000"
                   "0000000000000000000000000000000000000000000000000000000000000000",
                   64, NULL, NULL, NULL);
    FUNC0(FUNC4(curve25519_pk, ed25519_pk) == -1);

    FUNC9("ok\n");

    return 0;
}