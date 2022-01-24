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
typedef  int /*<<< orphan*/  PKCS7_SIGNER_INFO ;
typedef  int /*<<< orphan*/  PKCS7 ;
typedef  int /*<<< orphan*/  EVP_PKEY ;
typedef  int /*<<< orphan*/  EVP_MD ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/ * FUNC1 (int) ; 
 int /*<<< orphan*/  PKCS7_F_PKCS7_ADD_SIGNATURE ; 
 int /*<<< orphan*/  PKCS7_R_NO_DEFAULT_DIGEST ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

PKCS7_SIGNER_INFO *FUNC7(PKCS7 *p7, X509 *x509, EVP_PKEY *pkey,
                                       const EVP_MD *dgst)
{
    PKCS7_SIGNER_INFO *si = NULL;

    if (dgst == NULL) {
        int def_nid;
        if (FUNC0(pkey, &def_nid) <= 0)
            goto err;
        dgst = FUNC1(def_nid);
        if (dgst == NULL) {
            FUNC6(PKCS7_F_PKCS7_ADD_SIGNATURE, PKCS7_R_NO_DEFAULT_DIGEST);
            goto err;
        }
    }

    if ((si = FUNC3()) == NULL)
        goto err;
    if (!FUNC4(si, x509, pkey, dgst))
        goto err;
    if (!FUNC5(p7, si))
        goto err;
    return si;
 err:
    FUNC2(si);
    return NULL;
}