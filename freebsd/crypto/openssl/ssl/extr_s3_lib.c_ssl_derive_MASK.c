#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {TYPE_2__* s3; int /*<<< orphan*/  early_secret; int /*<<< orphan*/  hit; } ;
struct TYPE_11__ {unsigned char* pms; size_t pmslen; } ;
struct TYPE_12__ {TYPE_1__ tmp; } ;
typedef  TYPE_3__ SSL ;
typedef  int /*<<< orphan*/  EVP_PKEY_CTX ;
typedef  int /*<<< orphan*/  EVP_PKEY ;

/* Variables and functions */
 int /*<<< orphan*/  ERR_R_INTERNAL_ERROR ; 
 int /*<<< orphan*/  ERR_R_MALLOC_FAILURE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,unsigned char*,size_t*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (unsigned char*,size_t) ; 
 unsigned char* FUNC6 (size_t) ; 
 int /*<<< orphan*/  SSL_AD_INTERNAL_ERROR ; 
 int /*<<< orphan*/  SSL_F_SSL_DERIVE ; 
 scalar_t__ FUNC7 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC9 (TYPE_3__*,unsigned char*,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_3__*) ; 
 scalar_t__ FUNC11 (TYPE_3__*,unsigned char*,size_t) ; 
 int FUNC12 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned char*) ; 

int FUNC13(SSL *s, EVP_PKEY *privkey, EVP_PKEY *pubkey, int gensecret)
{
    int rv = 0;
    unsigned char *pms = NULL;
    size_t pmslen = 0;
    EVP_PKEY_CTX *pctx;

    if (privkey == NULL || pubkey == NULL) {
        FUNC8(s, SSL_AD_INTERNAL_ERROR, SSL_F_SSL_DERIVE,
                 ERR_R_INTERNAL_ERROR);
        return 0;
    }

    pctx = FUNC1(privkey, NULL);

    if (FUNC3(pctx) <= 0
        || FUNC4(pctx, pubkey) <= 0
        || FUNC2(pctx, NULL, &pmslen) <= 0) {
        FUNC8(s, SSL_AD_INTERNAL_ERROR, SSL_F_SSL_DERIVE,
                 ERR_R_INTERNAL_ERROR);
        goto err;
    }

    pms = FUNC6(pmslen);
    if (pms == NULL) {
        FUNC8(s, SSL_AD_INTERNAL_ERROR, SSL_F_SSL_DERIVE,
                 ERR_R_MALLOC_FAILURE);
        goto err;
    }

    if (FUNC2(pctx, pms, &pmslen) <= 0) {
        FUNC8(s, SSL_AD_INTERNAL_ERROR, SSL_F_SSL_DERIVE,
                 ERR_R_INTERNAL_ERROR);
        goto err;
    }

    if (gensecret) {
        /* SSLfatal() called as appropriate in the below functions */
        if (FUNC7(s)) {
            /*
             * If we are resuming then we already generated the early secret
             * when we created the ClientHello, so don't recreate it.
             */
            if (!s->hit)
                rv = FUNC12(s, FUNC10(s), NULL, NULL,
                                           0,
                                           (unsigned char *)&s->early_secret);
            else
                rv = 1;

            rv = rv && FUNC11(s, pms, pmslen);
        } else {
            rv = FUNC9(s, pms, pmslen, 0);
        }
    } else {
        /* Save premaster secret */
        s->s3->tmp.pms = pms;
        s->s3->tmp.pmslen = pmslen;
        pms = NULL;
        rv = 1;
    }

 err:
    FUNC5(pms, pmslen);
    FUNC0(pctx);
    return rv;
}