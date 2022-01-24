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
typedef  int /*<<< orphan*/  X509 ;
typedef  int /*<<< orphan*/  EVP_PKEY_CTX ;
typedef  int /*<<< orphan*/  EVP_PKEY ;
typedef  int /*<<< orphan*/  ENGINE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int,int /*<<< orphan*/ *) ; 
#define  EVP_PKEY_OP_DECRYPT 137 
#define  EVP_PKEY_OP_DERIVE 136 
#define  EVP_PKEY_OP_ENCRYPT 135 
#define  EVP_PKEY_OP_SIGN 134 
#define  EVP_PKEY_OP_VERIFY 133 
#define  EVP_PKEY_OP_VERIFYRECOVER 132 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ *) ; 
 int FUNC10 (int /*<<< orphan*/ *) ; 
 int FUNC11 (int /*<<< orphan*/ *) ; 
#define  KEY_CERT 131 
#define  KEY_NONE 130 
#define  KEY_PRIVKEY 129 
#define  KEY_PUBKEY 128 
 int NID_undef ; 
 int FUNC12 (char const*) ; 
 int FUNC13 (char const*) ; 
 int /*<<< orphan*/  FUNC14 (char*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (char*,int /*<<< orphan*/ *,char**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  bio_err ; 
 int /*<<< orphan*/ * FUNC18 (char const*,int,char*) ; 
 int /*<<< orphan*/ * FUNC19 (char const*,int,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * FUNC20 (char const*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static EVP_PKEY_CTX *FUNC21(const char *kdfalg, int *pkeysize,
                              const char *keyfile, int keyform, int key_type,
                              char *passinarg, int pkey_op, ENGINE *e,
                              const int engine_impl)
{
    EVP_PKEY *pkey = NULL;
    EVP_PKEY_CTX *ctx = NULL;
    ENGINE *impl = NULL;
    char *passin = NULL;
    int rv = -1;
    X509 *x;
    if (((pkey_op == EVP_PKEY_OP_SIGN) || (pkey_op == EVP_PKEY_OP_DECRYPT)
         || (pkey_op == EVP_PKEY_OP_DERIVE))
        && (key_type != KEY_PRIVKEY && kdfalg == NULL)) {
        FUNC0(bio_err, "A private key is needed for this operation\n");
        goto end;
    }
    if (!FUNC17(passinarg, NULL, &passin, NULL)) {
        FUNC0(bio_err, "Error getting password\n");
        goto end;
    }
    switch (key_type) {
    case KEY_PRIVKEY:
        pkey = FUNC19(keyfile, keyform, 0, passin, e, "Private Key");
        break;

    case KEY_PUBKEY:
        pkey = FUNC20(keyfile, keyform, 0, NULL, e, "Public Key");
        break;

    case KEY_CERT:
        x = FUNC18(keyfile, keyform, "Certificate");
        if (x) {
            pkey = FUNC16(x);
            FUNC15(x);
        }
        break;

    case KEY_NONE:
        break;

    }

#ifndef OPENSSL_NO_ENGINE
    if (engine_impl)
        impl = e;
#endif

    if (kdfalg != NULL) {
        int kdfnid = FUNC13(kdfalg);

        if (kdfnid == NID_undef) {
            kdfnid = FUNC12(kdfalg);
            if (kdfnid == NID_undef) {
                FUNC0(bio_err, "The given KDF \"%s\" is unknown.\n",
                           kdfalg);
                goto end;
            }
        }
        ctx = FUNC3(kdfnid, impl);
    } else {
        if (pkey == NULL)
            goto end;
        *pkeysize = FUNC9(pkey);
        ctx = FUNC2(pkey, impl);
        FUNC7(pkey);
    }

    if (ctx == NULL)
        goto end;

    switch (pkey_op) {
    case EVP_PKEY_OP_SIGN:
        rv = FUNC8(ctx);
        break;

    case EVP_PKEY_OP_VERIFY:
        rv = FUNC10(ctx);
        break;

    case EVP_PKEY_OP_VERIFYRECOVER:
        rv = FUNC11(ctx);
        break;

    case EVP_PKEY_OP_ENCRYPT:
        rv = FUNC6(ctx);
        break;

    case EVP_PKEY_OP_DECRYPT:
        rv = FUNC4(ctx);
        break;

    case EVP_PKEY_OP_DERIVE:
        rv = FUNC5(ctx);
        break;
    }

    if (rv <= 0) {
        FUNC1(ctx);
        ctx = NULL;
    }

 end:
    FUNC14(passin);
    return ctx;

}