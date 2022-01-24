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
typedef  int /*<<< orphan*/  X509_ALGOR ;
typedef  int /*<<< orphan*/  EVP_PKEY_CTX ;
typedef  int /*<<< orphan*/  CMS_RecipientInfo ;
typedef  int /*<<< orphan*/  ASN1_BIT_STRING ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  DH_F_DH_CMS_DECRYPT ; 
 int /*<<< orphan*/  DH_R_PEER_KEY_ERROR ; 
 int /*<<< orphan*/  DH_R_SHARED_INFO_ERROR ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(CMS_RecipientInfo *ri)
{
    EVP_PKEY_CTX *pctx;
    pctx = FUNC0(ri);
    if (!pctx)
        return 0;
    /* See if we need to set peer key */
    if (!FUNC3(pctx)) {
        X509_ALGOR *alg;
        ASN1_BIT_STRING *pubkey;
        if (!FUNC1(ri, &alg, &pubkey,
                                                 NULL, NULL, NULL))
            return 0;
        if (!alg || !pubkey)
            return 0;
        if (!FUNC4(pctx, alg, pubkey)) {
            FUNC2(DH_F_DH_CMS_DECRYPT, DH_R_PEER_KEY_ERROR);
            return 0;
        }
    }
    /* Set DH derivation parameters and initialise unwrap context */
    if (!FUNC5(pctx, ri)) {
        FUNC2(DH_F_DH_CMS_DECRYPT, DH_R_SHARED_INFO_ERROR);
        return 0;
    }
    return 1;
}