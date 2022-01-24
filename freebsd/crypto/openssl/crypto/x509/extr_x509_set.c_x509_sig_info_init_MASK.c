#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int mdnid; int pknid; int secbits; int /*<<< orphan*/  flags; } ;
typedef  TYPE_1__ X509_SIG_INFO ;
struct TYPE_10__ {int /*<<< orphan*/  algorithm; } ;
typedef  TYPE_2__ X509_ALGOR ;
struct TYPE_11__ {scalar_t__ (* siginf_set ) (TYPE_1__*,TYPE_2__ const*,int /*<<< orphan*/  const*) ;} ;
typedef  TYPE_3__ EVP_PKEY_ASN1_METHOD ;
typedef  int /*<<< orphan*/  EVP_MD ;
typedef  int /*<<< orphan*/  ASN1_STRING ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/  const*) ; 
 TYPE_3__* FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC2 (int) ; 
#define  NID_sha1 131 
#define  NID_sha256 130 
#define  NID_sha384 129 
#define  NID_sha512 128 
 int NID_undef ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int*,int*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  X509_SIG_INFO_TLS ; 
 int /*<<< orphan*/  X509_SIG_INFO_VALID ; 
 scalar_t__ FUNC5 (TYPE_1__*,TYPE_2__ const*,int /*<<< orphan*/  const*) ; 

__attribute__((used)) static void FUNC6(X509_SIG_INFO *siginf, const X509_ALGOR *alg,
                               const ASN1_STRING *sig)
{
    int pknid, mdnid;
    const EVP_MD *md;

    siginf->mdnid = NID_undef;
    siginf->pknid = NID_undef;
    siginf->secbits = -1;
    siginf->flags = 0;
    if (!FUNC3(FUNC4(alg->algorithm), &mdnid, &pknid)
            || pknid == NID_undef)
        return;
    siginf->pknid = pknid;
    if (mdnid == NID_undef) {
        /* If we have one, use a custom handler for this algorithm */
        const EVP_PKEY_ASN1_METHOD *ameth = FUNC1(NULL, pknid);
        if (ameth == NULL || ameth->siginf_set == NULL
                || ameth->siginf_set(siginf, alg, sig) == 0)
            return;
        siginf->flags |= X509_SIG_INFO_VALID;
        return;
    }
    siginf->flags |= X509_SIG_INFO_VALID;
    siginf->mdnid = mdnid;
    md = FUNC2(mdnid);
    if (md == NULL)
        return;
    /* Security bits: half number of bits in digest */
    siginf->secbits = FUNC0(md) * 4;
    switch (mdnid) {
        case NID_sha1:
        case NID_sha256:
        case NID_sha384:
        case NID_sha512:
        siginf->flags |= X509_SIG_INFO_TLS;
    }
}