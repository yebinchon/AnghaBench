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
typedef  int /*<<< orphan*/  PKCS7_SIGNER_INFO ;
typedef  int /*<<< orphan*/  ESS_SIGNING_CERT_V2 ;
typedef  int /*<<< orphan*/  ASN1_STRING ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned char*,int) ; 
 int /*<<< orphan*/  ERR_R_MALLOC_FAILURE ; 
 int /*<<< orphan*/  NID_id_smime_aa_signingCertificateV2 ; 
 int /*<<< orphan*/  FUNC3 (unsigned char*) ; 
 unsigned char* FUNC4 (int) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  TS_F_ESS_ADD_SIGNING_CERT_V2 ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  V_ASN1_SEQUENCE ; 
 int FUNC7 (int /*<<< orphan*/ *,unsigned char**) ; 

__attribute__((used)) static int FUNC8(PKCS7_SIGNER_INFO *si,
                                   ESS_SIGNING_CERT_V2 *sc)
{
    ASN1_STRING *seq = NULL;
    unsigned char *p, *pp = NULL;
    int len = FUNC7(sc, NULL);

    if ((pp = FUNC4(len)) == NULL) {
        FUNC6(TS_F_ESS_ADD_SIGNING_CERT_V2, ERR_R_MALLOC_FAILURE);
        goto err;
    }

    p = pp;
    FUNC7(sc, &p);
    if ((seq = FUNC1()) == NULL || !FUNC2(seq, pp, len)) {
        FUNC6(TS_F_ESS_ADD_SIGNING_CERT_V2, ERR_R_MALLOC_FAILURE);
        goto err;
    }

    FUNC3(pp);
    pp = NULL;
    return FUNC5(si,
                                      NID_id_smime_aa_signingCertificateV2,
                                      V_ASN1_SEQUENCE, seq);
 err:
    FUNC0(seq);
    FUNC3(pp);
    return 0;
}