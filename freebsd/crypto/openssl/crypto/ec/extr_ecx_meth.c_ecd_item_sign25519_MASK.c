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
typedef  int /*<<< orphan*/  ASN1_ITEM ;
typedef  int /*<<< orphan*/  ASN1_BIT_STRING ;

/* Variables and functions */
 int /*<<< orphan*/  NID_ED25519 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  V_ASN1_UNDEF ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(EVP_MD_CTX *ctx, const ASN1_ITEM *it, void *asn,
                              X509_ALGOR *alg1, X509_ALGOR *alg2,
                              ASN1_BIT_STRING *str)
{
    /* Set algorithms identifiers */
    FUNC1(alg1, FUNC0(NID_ED25519), V_ASN1_UNDEF, NULL);
    if (alg2)
        FUNC1(alg2, FUNC0(NID_ED25519), V_ASN1_UNDEF, NULL);
    /* Algorithm identifiers set: carry on as normal */
    return 3;
}