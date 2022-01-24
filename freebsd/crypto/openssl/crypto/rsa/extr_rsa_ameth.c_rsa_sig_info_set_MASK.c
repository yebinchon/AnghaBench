#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint32_t ;
typedef  int /*<<< orphan*/  X509_SIG_INFO ;
struct TYPE_4__ {int /*<<< orphan*/  algorithm; } ;
typedef  TYPE_1__ X509_ALGOR ;
typedef  int /*<<< orphan*/  RSA_PSS_PARAMS ;
typedef  int /*<<< orphan*/  EVP_MD ;
typedef  int /*<<< orphan*/  ASN1_STRING ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/  const*) ; 
 int FUNC1 (int /*<<< orphan*/  const*) ; 
 scalar_t__ EVP_PKEY_RSA_PSS ; 
 int NID_sha256 ; 
 int NID_sha384 ; 
 int NID_sha512 ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ X509_SIG_INFO_TLS ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,scalar_t__,int,scalar_t__) ; 
 int /*<<< orphan*/ * FUNC5 (TYPE_1__ const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/  const**,int /*<<< orphan*/  const**,int*) ; 

__attribute__((used)) static int FUNC7(X509_SIG_INFO *siginf, const X509_ALGOR *sigalg,
                            const ASN1_STRING *sig)
{
    int rv = 0;
    int mdnid, saltlen;
    uint32_t flags;
    const EVP_MD *mgf1md = NULL, *md = NULL;
    RSA_PSS_PARAMS *pss;

    /* Sanity check: make sure it is PSS */
    if (FUNC2(sigalg->algorithm) != EVP_PKEY_RSA_PSS)
        return 0;
    /* Decode PSS parameters */
    pss = FUNC5(sigalg);
    if (!FUNC6(pss, &md, &mgf1md, &saltlen))
        goto err;
    mdnid = FUNC1(md);
    /*
     * For TLS need SHA256, SHA384 or SHA512, digest and MGF1 digest must
     * match and salt length must equal digest size
     */
    if ((mdnid == NID_sha256 || mdnid == NID_sha384 || mdnid == NID_sha512)
            && mdnid == FUNC1(mgf1md) && saltlen == FUNC0(md))
        flags = X509_SIG_INFO_TLS;
    else
        flags = 0;
    /* Note: security bits half number of digest bits */
    FUNC4(siginf, mdnid, EVP_PKEY_RSA_PSS, FUNC0(md) * 4,
                      flags);
    rv = 1;
    err:
    FUNC3(pss);
    return rv;
}