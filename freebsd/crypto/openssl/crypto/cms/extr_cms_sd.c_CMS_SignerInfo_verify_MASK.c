#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {TYPE_2__* signature; scalar_t__ signedAttrs; int /*<<< orphan*/  pkey; int /*<<< orphan*/  pctx; int /*<<< orphan*/ * mctx; TYPE_1__* digestAlgorithm; } ;
struct TYPE_8__ {int /*<<< orphan*/  length; int /*<<< orphan*/  data; } ;
struct TYPE_7__ {int /*<<< orphan*/  algorithm; } ;
typedef  int /*<<< orphan*/  EVP_MD_CTX ;
typedef  int /*<<< orphan*/  EVP_MD ;
typedef  TYPE_3__ CMS_SignerInfo ;
typedef  int /*<<< orphan*/  ASN1_VALUE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *,unsigned char**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CMS_Attributes_Verify ; 
 int /*<<< orphan*/  CMS_F_CMS_SIGNERINFO_VERIFY ; 
 int /*<<< orphan*/  CMS_R_NO_PUBLIC_KEY ; 
 int /*<<< orphan*/  CMS_R_VERIFICATION_FAILURE ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERR_R_MALLOC_FAILURE ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ *,unsigned char*,int) ; 
 int /*<<< orphan*/ * FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (unsigned char*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_3__*,int) ; 

int FUNC12(CMS_SignerInfo *si)
{
    EVP_MD_CTX *mctx = NULL;
    unsigned char *abuf = NULL;
    int alen, r = -1;
    const EVP_MD *md = NULL;

    if (!si->pkey) {
        FUNC3(CMS_F_CMS_SIGNERINFO_VERIFY, CMS_R_NO_PUBLIC_KEY);
        return -1;
    }

    if (!FUNC2(si))
        return -1;

    md = FUNC9(si->digestAlgorithm->algorithm);
    if (md == NULL)
        return -1;
    if (si->mctx == NULL && (si->mctx = FUNC7()) == NULL) {
        FUNC3(CMS_F_CMS_SIGNERINFO_VERIFY, ERR_R_MALLOC_FAILURE);
        return -1;
    }
    mctx = si->mctx;
    if (FUNC5(mctx, &si->pctx, md, NULL, si->pkey) <= 0)
        goto err;

    if (!FUNC11(si, 1))
        goto err;

    alen = FUNC1((ASN1_VALUE *)si->signedAttrs, &abuf,
                         FUNC0(CMS_Attributes_Verify));
    if (!abuf)
        goto err;
    r = FUNC6(mctx, abuf, alen);
    FUNC10(abuf);
    if (r <= 0) {
        r = -1;
        goto err;
    }
    r = FUNC4(mctx,
                              si->signature->data, si->signature->length);
    if (r <= 0)
        FUNC3(CMS_F_CMS_SIGNERINFO_VERIFY, CMS_R_VERIFICATION_FAILURE);
 err:
    FUNC8(mctx);
    return r;
}