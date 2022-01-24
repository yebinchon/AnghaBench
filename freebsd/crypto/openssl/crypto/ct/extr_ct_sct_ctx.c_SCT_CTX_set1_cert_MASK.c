#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  X509_EXTENSION ;
typedef  int /*<<< orphan*/  X509 ;
struct TYPE_3__ {unsigned char* certder; int certderlen; unsigned char* preder; int prederlen; } ;
typedef  TYPE_1__ SCT_CTX ;

/* Variables and functions */
 int /*<<< orphan*/  NID_ct_precert_poison ; 
 int /*<<< orphan*/  NID_ct_precert_scts ; 
 int /*<<< orphan*/  FUNC0 (unsigned char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*) ; 
 int FUNC7 (int /*<<< orphan*/ *,unsigned char**) ; 
 int FUNC8 (int /*<<< orphan*/ *,unsigned char**) ; 

int FUNC9(SCT_CTX *sctx, X509 *cert, X509 *presigner)
{
    unsigned char *certder = NULL, *preder = NULL;
    X509 *pretmp = NULL;
    int certderlen = 0, prederlen = 0;
    int idx = -1;
    int poison_ext_is_dup, sct_ext_is_dup;
    int poison_idx = FUNC6(cert, NID_ct_precert_poison, &poison_ext_is_dup);

    /* Duplicate poison extensions are present - error */
    if (poison_ext_is_dup)
        goto err;

    /* If *cert doesn't have a poison extension, it isn't a precert */
    if (poison_idx == -1) {
        /* cert isn't a precert, so we shouldn't have a presigner */
        if (presigner != NULL)
            goto err;

        certderlen = FUNC7(cert, &certder);
        if (certderlen < 0)
            goto err;
    }

    /* See if cert has a precert SCTs extension */
    idx = FUNC6(cert, NID_ct_precert_scts, &sct_ext_is_dup);
    /* Duplicate SCT extensions are present - error */
    if (sct_ext_is_dup)
        goto err;

    if (idx >= 0 && poison_idx >= 0) {
        /*
         * cert can't both contain SCTs (i.e. have an SCT extension) and be a
         * precert (i.e. have a poison extension).
         */
        goto err;
    }

    if (idx == -1) {
        idx = poison_idx;
    }

    /*
     * If either a poison or SCT extension is present, remove it before encoding
     * cert. This, along with ct_x509_cert_fixup(), gets a TBSCertificate (see
     * RFC5280) from cert, which is what the CT log signed when it produced the
     * SCT.
     */
    if (idx >= 0) {
        X509_EXTENSION *ext;

        /* Take a copy of certificate so we don't modify passed version */
        pretmp = FUNC3(cert);
        if (pretmp == NULL)
            goto err;

        ext = FUNC2(pretmp, idx);
        FUNC1(ext);

        if (!FUNC5(pretmp, presigner))
            goto err;

        prederlen = FUNC8(pretmp, &preder);
        if (prederlen <= 0)
            goto err;
    }

    FUNC4(pretmp);

    FUNC0(sctx->certder);
    sctx->certder = certder;
    sctx->certderlen = certderlen;

    FUNC0(sctx->preder);
    sctx->preder = preder;
    sctx->prederlen = prederlen;

    return 1;
err:
    FUNC0(certder);
    FUNC0(preder);
    FUNC4(pretmp);
    return 0;
}