#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  signature; scalar_t__ signedAttrs; int /*<<< orphan*/ * pctx; int /*<<< orphan*/  pkey; TYPE_1__* digestAlgorithm; int /*<<< orphan*/ * mctx; } ;
struct TYPE_8__ {int /*<<< orphan*/  algorithm; } ;
typedef  int /*<<< orphan*/  EVP_PKEY_CTX ;
typedef  int /*<<< orphan*/  EVP_MD_CTX ;
typedef  int /*<<< orphan*/  EVP_MD ;
typedef  TYPE_2__ CMS_SignerInfo ;
typedef  int /*<<< orphan*/  ASN1_VALUE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned char*,size_t) ; 
 int FUNC2 (int /*<<< orphan*/ *,unsigned char**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CMS_Attributes_Sign ; 
 int /*<<< orphan*/  CMS_F_CMS_SIGNERINFO_SIGN ; 
 int /*<<< orphan*/  CMS_R_CTRL_ERROR ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 scalar_t__ FUNC4 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,unsigned char*,size_t*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  EVP_PKEY_CTRL_CMS_SIGN ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,TYPE_2__*) ; 
 int /*<<< orphan*/  EVP_PKEY_OP_SIGN ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NID_pkcs9_signingTime ; 
 int /*<<< orphan*/  FUNC12 (unsigned char*) ; 
 unsigned char* FUNC13 (size_t) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_2__*,int /*<<< orphan*/ *) ; 

int FUNC15(CMS_SignerInfo *si)
{
    EVP_MD_CTX *mctx = si->mctx;
    EVP_PKEY_CTX *pctx = NULL;
    unsigned char *abuf = NULL;
    int alen;
    size_t siglen;
    const EVP_MD *md = NULL;

    md = FUNC11(si->digestAlgorithm->algorithm);
    if (md == NULL)
        return 0;

    if (FUNC4(si, NID_pkcs9_signingTime, -1) < 0) {
        if (!FUNC14(si, NULL))
            goto err;
    }

    if (!FUNC3(si))
        goto err;

    if (si->pctx)
        pctx = si->pctx;
    else {
        FUNC9(mctx);
        if (FUNC7(mctx, &pctx, md, NULL, si->pkey) <= 0)
            goto err;
        si->pctx = pctx;
    }

    if (FUNC10(pctx, -1, EVP_PKEY_OP_SIGN,
                          EVP_PKEY_CTRL_CMS_SIGN, 0, si) <= 0) {
        FUNC5(CMS_F_CMS_SIGNERINFO_SIGN, CMS_R_CTRL_ERROR);
        goto err;
    }

    alen = FUNC2((ASN1_VALUE *)si->signedAttrs, &abuf,
                         FUNC0(CMS_Attributes_Sign));
    if (!abuf)
        goto err;
    if (FUNC8(mctx, abuf, alen) <= 0)
        goto err;
    if (FUNC6(mctx, NULL, &siglen) <= 0)
        goto err;
    FUNC12(abuf);
    abuf = FUNC13(siglen);
    if (abuf == NULL)
        goto err;
    if (FUNC6(mctx, abuf, &siglen) <= 0)
        goto err;

    if (FUNC10(pctx, -1, EVP_PKEY_OP_SIGN,
                          EVP_PKEY_CTRL_CMS_SIGN, 1, si) <= 0) {
        FUNC5(CMS_F_CMS_SIGNERINFO_SIGN, CMS_R_CTRL_ERROR);
        goto err;
    }

    FUNC9(mctx);

    FUNC1(si->signature, abuf, siglen);

    return 1;

 err:
    FUNC12(abuf);
    FUNC9(mctx);
    return 0;
}