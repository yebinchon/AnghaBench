#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {TYPE_1__* enc_key; } ;
struct TYPE_5__ {int /*<<< orphan*/  length; int /*<<< orphan*/  data; } ;
typedef  TYPE_2__ PKCS7_RECIP_INFO ;
typedef  int /*<<< orphan*/  EVP_PKEY_CTX ;
typedef  int /*<<< orphan*/  EVP_PKEY ;

/* Variables and functions */
 int /*<<< orphan*/  ERR_R_EVP_LIB ; 
 int /*<<< orphan*/  ERR_R_MALLOC_FAILURE ; 
 int /*<<< orphan*/  EVP_PKEY_CTRL_PKCS7_DECRYPT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  EVP_PKEY_OP_DECRYPT ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,unsigned char*,size_t*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC6 (unsigned char*) ; 
 unsigned char* FUNC7 (size_t) ; 
 int /*<<< orphan*/  PKCS7_F_PKCS7_DECRYPT_RINFO ; 
 int /*<<< orphan*/  PKCS7_R_CTRL_ERROR ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(unsigned char **pek, int *peklen,
                               PKCS7_RECIP_INFO *ri, EVP_PKEY *pkey,
                               size_t fixlen)
{
    EVP_PKEY_CTX *pctx = NULL;
    unsigned char *ek = NULL;
    size_t eklen;

    int ret = -1;

    pctx = FUNC2(pkey, NULL);
    if (!pctx)
        return -1;

    if (FUNC4(pctx) <= 0)
        goto err;

    if (FUNC0(pctx, -1, EVP_PKEY_OP_DECRYPT,
                          EVP_PKEY_CTRL_PKCS7_DECRYPT, 0, ri) <= 0) {
        FUNC8(PKCS7_F_PKCS7_DECRYPT_RINFO, PKCS7_R_CTRL_ERROR);
        goto err;
    }

    if (FUNC3(pctx, NULL, &eklen,
                         ri->enc_key->data, ri->enc_key->length) <= 0)
        goto err;

    ek = FUNC7(eklen);

    if (ek == NULL) {
        FUNC8(PKCS7_F_PKCS7_DECRYPT_RINFO, ERR_R_MALLOC_FAILURE);
        goto err;
    }

    if (FUNC3(pctx, ek, &eklen,
                         ri->enc_key->data, ri->enc_key->length) <= 0
            || eklen == 0
            || (fixlen != 0 && eklen != fixlen)) {
        ret = 0;
        FUNC8(PKCS7_F_PKCS7_DECRYPT_RINFO, ERR_R_EVP_LIB);
        goto err;
    }

    ret = 1;

    FUNC5(*pek, *peklen);
    *pek = ek;
    *peklen = eklen;

 err:
    FUNC1(pctx);
    if (!ret)
        FUNC6(ek);

    return ret;
}