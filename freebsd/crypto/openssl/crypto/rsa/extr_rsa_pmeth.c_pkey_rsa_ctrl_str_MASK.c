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
typedef  int /*<<< orphan*/  EVP_PKEY_CTX ;
typedef  int /*<<< orphan*/  BIGNUM ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ **,char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  EVP_PKEY_CTRL_MD ; 
 int /*<<< orphan*/  EVP_PKEY_CTRL_RSA_MGF1_MD ; 
 int /*<<< orphan*/  EVP_PKEY_CTRL_RSA_OAEP_MD ; 
 int FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,char const*) ; 
 int FUNC3 (int /*<<< orphan*/ *,unsigned char*,long) ; 
 int FUNC4 (int /*<<< orphan*/ *,int) ; 
 int FUNC5 (int /*<<< orphan*/ *,int) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *,int) ; 
 int FUNC8 (int /*<<< orphan*/ *,int) ; 
 int FUNC9 (int /*<<< orphan*/ *,int) ; 
 int EVP_PKEY_OP_KEYGEN ; 
 int EVP_PKEY_OP_TYPE_CRYPT ; 
 int EVP_PKEY_OP_TYPE_SIG ; 
 int /*<<< orphan*/  FUNC10 (unsigned char*) ; 
 unsigned char* FUNC11 (char const*,long*) ; 
 int /*<<< orphan*/  RSA_F_PKEY_RSA_CTRL_STR ; 
 int RSA_NO_PADDING ; 
 int RSA_PKCS1_OAEP_PADDING ; 
 int RSA_PKCS1_PADDING ; 
 int RSA_PKCS1_PSS_PADDING ; 
 int RSA_PSS_SALTLEN_AUTO ; 
 int RSA_PSS_SALTLEN_DIGEST ; 
 int RSA_PSS_SALTLEN_MAX ; 
 int /*<<< orphan*/  RSA_R_UNKNOWN_PADDING_TYPE ; 
 int /*<<< orphan*/  RSA_R_VALUE_MISSING ; 
 int RSA_SSLV23_PADDING ; 
 int RSA_X931_PADDING ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC13 (char const*) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC15 (char const*,char*) ; 

__attribute__((used)) static int FUNC16(EVP_PKEY_CTX *ctx,
                             const char *type, const char *value)
{
    if (value == NULL) {
        FUNC12(RSA_F_PKEY_RSA_CTRL_STR, RSA_R_VALUE_MISSING);
        return 0;
    }
    if (FUNC15(type, "rsa_padding_mode") == 0) {
        int pm;

        if (FUNC15(value, "pkcs1") == 0) {
            pm = RSA_PKCS1_PADDING;
        } else if (FUNC15(value, "sslv23") == 0) {
            pm = RSA_SSLV23_PADDING;
        } else if (FUNC15(value, "none") == 0) {
            pm = RSA_NO_PADDING;
        } else if (FUNC15(value, "oeap") == 0) {
            pm = RSA_PKCS1_OAEP_PADDING;
        } else if (FUNC15(value, "oaep") == 0) {
            pm = RSA_PKCS1_OAEP_PADDING;
        } else if (FUNC15(value, "x931") == 0) {
            pm = RSA_X931_PADDING;
        } else if (FUNC15(value, "pss") == 0) {
            pm = RSA_PKCS1_PSS_PADDING;
        } else {
            FUNC12(RSA_F_PKEY_RSA_CTRL_STR, RSA_R_UNKNOWN_PADDING_TYPE);
            return -2;
        }
        return FUNC7(ctx, pm);
    }

    if (FUNC15(type, "rsa_pss_saltlen") == 0) {
        int saltlen;

        if (!FUNC15(value, "digest"))
            saltlen = RSA_PSS_SALTLEN_DIGEST;
        else if (!FUNC15(value, "max"))
            saltlen = RSA_PSS_SALTLEN_MAX;
        else if (!FUNC15(value, "auto"))
            saltlen = RSA_PSS_SALTLEN_AUTO;
        else
            saltlen = FUNC13(value);
        return FUNC9(ctx, saltlen);
    }

    if (FUNC15(type, "rsa_keygen_bits") == 0) {
        int nbits = FUNC13(value);

        return FUNC4(ctx, nbits);
    }

    if (FUNC15(type, "rsa_keygen_pubexp") == 0) {
        int ret;

        BIGNUM *pubexp = NULL;
        if (!FUNC0(&pubexp, value))
            return 0;
        ret = FUNC6(ctx, pubexp);
        if (ret <= 0)
            FUNC1(pubexp);
        return ret;
    }

    if (FUNC15(type, "rsa_keygen_primes") == 0) {
        int nprimes = FUNC13(value);

        return FUNC5(ctx, nprimes);
    }

    if (FUNC15(type, "rsa_mgf1_md") == 0)
        return FUNC2(ctx,
                               EVP_PKEY_OP_TYPE_SIG | EVP_PKEY_OP_TYPE_CRYPT,
                               EVP_PKEY_CTRL_RSA_MGF1_MD, value);

    if (FUNC14(ctx)) {

        if (FUNC15(type, "rsa_pss_keygen_mgf1_md") == 0)
            return FUNC2(ctx, EVP_PKEY_OP_KEYGEN,
                                   EVP_PKEY_CTRL_RSA_MGF1_MD, value);

        if (FUNC15(type, "rsa_pss_keygen_md") == 0)
            return FUNC2(ctx, EVP_PKEY_OP_KEYGEN,
                                   EVP_PKEY_CTRL_MD, value);

        if (FUNC15(type, "rsa_pss_keygen_saltlen") == 0) {
            int saltlen = FUNC13(value);

            return FUNC8(ctx, saltlen);
        }
    }

    if (FUNC15(type, "rsa_oaep_md") == 0)
        return FUNC2(ctx, EVP_PKEY_OP_TYPE_CRYPT,
                               EVP_PKEY_CTRL_RSA_OAEP_MD, value);

    if (FUNC15(type, "rsa_oaep_label") == 0) {
        unsigned char *lab;
        long lablen;
        int ret;

        lab = FUNC11(value, &lablen);
        if (!lab)
            return 0;
        ret = FUNC3(ctx, lab, lablen);
        if (ret <= 0)
            FUNC10(lab);
        return ret;
    }

    return -2;
}