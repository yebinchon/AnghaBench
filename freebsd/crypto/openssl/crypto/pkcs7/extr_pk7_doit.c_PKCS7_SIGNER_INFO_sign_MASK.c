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
struct TYPE_6__ {int /*<<< orphan*/  enc_digest; scalar_t__ auth_attr; int /*<<< orphan*/  pkey; TYPE_1__* digest_alg; } ;
struct TYPE_5__ {int /*<<< orphan*/  algorithm; } ;
typedef  TYPE_2__ PKCS7_SIGNER_INFO ;
typedef  int /*<<< orphan*/  EVP_PKEY_CTX ;
typedef  int /*<<< orphan*/  EVP_MD_CTX ;
typedef  int /*<<< orphan*/  EVP_MD ;
typedef  int /*<<< orphan*/  ASN1_VALUE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned char*,size_t) ; 
 int FUNC2 (int /*<<< orphan*/ *,unsigned char**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERR_R_MALLOC_FAILURE ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,unsigned char*,size_t*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 () ; 
 int /*<<< orphan*/  EVP_PKEY_CTRL_PKCS7_SIGN ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,TYPE_2__*) ; 
 int /*<<< orphan*/  EVP_PKEY_OP_SIGN ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (unsigned char*) ; 
 unsigned char* FUNC11 (size_t) ; 
 int /*<<< orphan*/  PKCS7_ATTR_SIGN ; 
 int /*<<< orphan*/  PKCS7_F_PKCS7_SIGNER_INFO_SIGN ; 
 int /*<<< orphan*/  PKCS7_R_CTRL_ERROR ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC13(PKCS7_SIGNER_INFO *si)
{
    EVP_MD_CTX *mctx;
    EVP_PKEY_CTX *pctx = NULL;
    unsigned char *abuf = NULL;
    int alen;
    size_t siglen;
    const EVP_MD *md = NULL;

    md = FUNC9(si->digest_alg->algorithm);
    if (md == NULL)
        return 0;

    mctx = FUNC7();
    if (mctx == NULL) {
        FUNC12(PKCS7_F_PKCS7_SIGNER_INFO_SIGN, ERR_R_MALLOC_FAILURE);
        goto err;
    }

    if (FUNC4(mctx, &pctx, md, NULL, si->pkey) <= 0)
        goto err;

    if (FUNC8(pctx, -1, EVP_PKEY_OP_SIGN,
                          EVP_PKEY_CTRL_PKCS7_SIGN, 0, si) <= 0) {
        FUNC12(PKCS7_F_PKCS7_SIGNER_INFO_SIGN, PKCS7_R_CTRL_ERROR);
        goto err;
    }

    alen = FUNC2((ASN1_VALUE *)si->auth_attr, &abuf,
                         FUNC0(PKCS7_ATTR_SIGN));
    if (!abuf)
        goto err;
    if (FUNC5(mctx, abuf, alen) <= 0)
        goto err;
    FUNC10(abuf);
    abuf = NULL;
    if (FUNC3(mctx, NULL, &siglen) <= 0)
        goto err;
    abuf = FUNC11(siglen);
    if (abuf == NULL)
        goto err;
    if (FUNC3(mctx, abuf, &siglen) <= 0)
        goto err;

    if (FUNC8(pctx, -1, EVP_PKEY_OP_SIGN,
                          EVP_PKEY_CTRL_PKCS7_SIGN, 1, si) <= 0) {
        FUNC12(PKCS7_F_PKCS7_SIGNER_INFO_SIGN, PKCS7_R_CTRL_ERROR);
        goto err;
    }

    FUNC6(mctx);

    FUNC1(si->enc_digest, abuf, siglen);

    return 1;

 err:
    FUNC10(abuf);
    FUNC6(mctx);
    return 0;

}