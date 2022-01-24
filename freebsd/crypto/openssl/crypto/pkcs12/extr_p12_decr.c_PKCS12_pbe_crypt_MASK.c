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
struct TYPE_3__ {int /*<<< orphan*/  parameter; int /*<<< orphan*/  algorithm; } ;
typedef  TYPE_1__ X509_ALGOR ;
typedef  int /*<<< orphan*/  EVP_CIPHER_CTX ;

/* Variables and functions */
 int /*<<< orphan*/  ERR_R_EVP_LIB ; 
 int /*<<< orphan*/  ERR_R_MALLOC_FAILURE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned char*,int*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned char*,int*,unsigned char const*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char const*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (unsigned char*) ; 
 unsigned char* FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  PKCS12_F_PKCS12_PBE_CRYPT ; 
 int /*<<< orphan*/  PKCS12_R_PKCS12_ALGOR_CIPHERINIT_ERROR ; 
 int /*<<< orphan*/  PKCS12_R_PKCS12_CIPHERFINAL_ERROR ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

unsigned char *FUNC9(const X509_ALGOR *algor,
                                const char *pass, int passlen,
                                const unsigned char *in, int inlen,
                                unsigned char **data, int *datalen, int en_de)
{
    unsigned char *out = NULL;
    int outlen, i;
    EVP_CIPHER_CTX *ctx = FUNC2();

    if (ctx == NULL) {
        FUNC8(PKCS12_F_PKCS12_PBE_CRYPT, ERR_R_MALLOC_FAILURE);
        goto err;
    }

    /* Decrypt data */
    if (!FUNC5(algor->algorithm, pass, passlen,
                            algor->parameter, ctx, en_de)) {
        FUNC8(PKCS12_F_PKCS12_PBE_CRYPT,
                  PKCS12_R_PKCS12_ALGOR_CIPHERINIT_ERROR);
        goto err;
    }

    if ((out = FUNC7(inlen + FUNC0(ctx)))
            == NULL) {
        FUNC8(PKCS12_F_PKCS12_PBE_CRYPT, ERR_R_MALLOC_FAILURE);
        goto err;
    }

    if (!FUNC4(ctx, out, &i, in, inlen)) {
        FUNC6(out);
        out = NULL;
        FUNC8(PKCS12_F_PKCS12_PBE_CRYPT, ERR_R_EVP_LIB);
        goto err;
    }

    outlen = i;
    if (!FUNC3(ctx, out + i, &i)) {
        FUNC6(out);
        out = NULL;
        FUNC8(PKCS12_F_PKCS12_PBE_CRYPT,
                  PKCS12_R_PKCS12_CIPHERFINAL_ERROR);
        goto err;
    }
    outlen += i;
    if (datalen)
        *datalen = outlen;
    if (data)
        *data = out;
 err:
    FUNC1(ctx);
    return out;

}