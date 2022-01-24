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
struct TYPE_4__ {int /*<<< orphan*/  algorithm; } ;
typedef  TYPE_1__ X509_ALGOR ;
typedef  int /*<<< orphan*/  RSA_PSS_PARAMS ;
typedef  int /*<<< orphan*/  EVP_PKEY_CTX ;
typedef  int /*<<< orphan*/  EVP_PKEY ;
typedef  int /*<<< orphan*/  EVP_MD_CTX ;
typedef  int /*<<< orphan*/  EVP_MD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/  const**) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ EVP_PKEY_RSA_PSS ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RSA_F_RSA_PSS_TO_CTX ; 
 int /*<<< orphan*/  RSA_PKCS1_PSS_PADDING ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  RSA_R_DIGEST_DOES_NOT_MATCH ; 
 int /*<<< orphan*/  RSA_R_INVALID_PSS_PARAMETERS ; 
 int /*<<< orphan*/  RSA_R_UNSUPPORTED_SIGNATURE_TYPE ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/  const**,int /*<<< orphan*/  const**,int*) ; 

__attribute__((used)) static int FUNC11(EVP_MD_CTX *ctx, EVP_PKEY_CTX *pkctx,
                          X509_ALGOR *sigalg, EVP_PKEY *pkey)
{
    int rv = -1;
    int saltlen;
    const EVP_MD *mgf1md = NULL, *md = NULL;
    RSA_PSS_PARAMS *pss;

    /* Sanity check: make sure it is PSS */
    if (FUNC6(sigalg->algorithm) != EVP_PKEY_RSA_PSS) {
        FUNC8(RSA_F_RSA_PSS_TO_CTX, RSA_R_UNSUPPORTED_SIGNATURE_TYPE);
        return -1;
    }
    /* Decode PSS parameters */
    pss = FUNC9(sigalg);

    if (!FUNC10(pss, &md, &mgf1md, &saltlen)) {
        FUNC8(RSA_F_RSA_PSS_TO_CTX, RSA_R_INVALID_PSS_PARAMETERS);
        goto err;
    }

    /* We have all parameters now set up context */
    if (pkey) {
        if (!FUNC0(ctx, &pkctx, md, NULL, pkey))
            goto err;
    } else {
        const EVP_MD *checkmd;
        if (FUNC2(pkctx, &checkmd) <= 0)
            goto err;
        if (FUNC1(md) != FUNC1(checkmd)) {
            FUNC8(RSA_F_RSA_PSS_TO_CTX, RSA_R_DIGEST_DOES_NOT_MATCH);
            goto err;
        }
    }

    if (FUNC4(pkctx, RSA_PKCS1_PSS_PADDING) <= 0)
        goto err;

    if (FUNC5(pkctx, saltlen) <= 0)
        goto err;

    if (FUNC3(pkctx, mgf1md) <= 0)
        goto err;
    /* Carry on */
    rv = 1;

 err:
    FUNC7(pss);
    return rv;
}