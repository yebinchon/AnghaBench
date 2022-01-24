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
typedef  int /*<<< orphan*/  EVP_MD_CTX ;
typedef  int /*<<< orphan*/  BIO ;
typedef  int /*<<< orphan*/  ASN1_OBJECT ;

/* Variables and functions */
 int /*<<< orphan*/  BIO_TYPE_MD ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  CMS_F_CMS_DIGESTALGORITHM_FIND_CTX ; 
 int /*<<< orphan*/  CMS_R_NO_MATCHING_DIGEST ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/  const**,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

int FUNC10(EVP_MD_CTX *mctx, BIO *chain,
                                 X509_ALGOR *mdalg)
{
    int nid;
    const ASN1_OBJECT *mdoid;
    FUNC9(&mdoid, NULL, NULL, mdalg);
    nid = FUNC8(mdoid);
    /* Look for digest type to match signature */
    for (;;) {
        EVP_MD_CTX *mtmp;
        chain = FUNC0(chain, BIO_TYPE_MD);
        if (chain == NULL) {
            FUNC3(CMS_F_CMS_DIGESTALGORITHM_FIND_CTX,
                   CMS_R_NO_MATCHING_DIGEST);
            return 0;
        }
        FUNC1(chain, &mtmp);
        if (FUNC6(mtmp) == nid
            /*
             * Workaround for broken implementations that use signature
             * algorithm OID instead of digest.
             */
            || FUNC7(FUNC5(mtmp)) == nid)
            return FUNC4(mctx, mtmp);
        chain = FUNC2(chain);
    }
}