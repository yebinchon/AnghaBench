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
typedef  int /*<<< orphan*/  EVP_MD ;
typedef  int /*<<< orphan*/  BIO ;
typedef  int /*<<< orphan*/  ASN1_OBJECT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  CMS_F_CMS_DIGESTALGORITHM_INIT_BIO ; 
 int /*<<< orphan*/  CMS_R_MD_BIO_INIT_ERROR ; 
 int /*<<< orphan*/  CMS_R_UNKNOWN_DIGEST_ALGORITHM ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/  const**,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

BIO *FUNC7(X509_ALGOR *digestAlgorithm)
{
    BIO *mdbio = NULL;
    const ASN1_OBJECT *digestoid;
    const EVP_MD *digest;
    FUNC6(&digestoid, NULL, NULL, digestAlgorithm);
    digest = FUNC5(digestoid);
    if (!digest) {
        FUNC4(CMS_F_CMS_DIGESTALGORITHM_INIT_BIO,
               CMS_R_UNKNOWN_DIGEST_ALGORITHM);
        goto err;
    }
    mdbio = FUNC2(FUNC0());
    if (mdbio == NULL || !FUNC3(mdbio, digest)) {
        FUNC4(CMS_F_CMS_DIGESTALGORITHM_INIT_BIO, CMS_R_MD_BIO_INIT_ERROR);
        goto err;
    }
    return mdbio;
 err:
    FUNC1(mdbio);
    return NULL;
}