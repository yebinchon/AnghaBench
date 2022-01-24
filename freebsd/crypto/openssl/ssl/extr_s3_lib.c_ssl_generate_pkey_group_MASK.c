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
typedef  int uint16_t ;
struct TYPE_3__ {int flags; int /*<<< orphan*/  nid; } ;
typedef  TYPE_1__ TLS_GROUP_INFO ;
typedef  int /*<<< orphan*/  SSL ;
typedef  int /*<<< orphan*/  EVP_PKEY_CTX ;
typedef  int /*<<< orphan*/  EVP_PKEY ;

/* Variables and functions */
 int /*<<< orphan*/  ERR_R_EVP_LIB ; 
 int /*<<< orphan*/  ERR_R_INTERNAL_ERROR ; 
 int /*<<< orphan*/  ERR_R_MALLOC_FAILURE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EVP_PKEY_EC ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SSL_AD_INTERNAL_ERROR ; 
 int /*<<< orphan*/  SSL_F_SSL_GENERATE_PKEY_GROUP ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int TLS_CURVE_CUSTOM ; 
 int TLS_CURVE_TYPE ; 
 TYPE_1__* FUNC7 (int) ; 

EVP_PKEY *FUNC8(SSL *s, uint16_t id)
{
    EVP_PKEY_CTX *pctx = NULL;
    EVP_PKEY *pkey = NULL;
    const TLS_GROUP_INFO *ginf = FUNC7(id);
    uint16_t gtype;

    if (ginf == NULL) {
        FUNC6(s, SSL_AD_INTERNAL_ERROR, SSL_F_SSL_GENERATE_PKEY_GROUP,
                 ERR_R_INTERNAL_ERROR);
        goto err;
    }
    gtype = ginf->flags & TLS_CURVE_TYPE;
    if (gtype == TLS_CURVE_CUSTOM)
        pctx = FUNC1(ginf->nid, NULL);
    else
        pctx = FUNC1(EVP_PKEY_EC, NULL);
    if (pctx == NULL) {
        FUNC6(s, SSL_AD_INTERNAL_ERROR, SSL_F_SSL_GENERATE_PKEY_GROUP,
                 ERR_R_MALLOC_FAILURE);
        goto err;
    }
    if (FUNC5(pctx) <= 0) {
        FUNC6(s, SSL_AD_INTERNAL_ERROR, SSL_F_SSL_GENERATE_PKEY_GROUP,
                 ERR_R_EVP_LIB);
        goto err;
    }
    if (gtype != TLS_CURVE_CUSTOM
            && FUNC2(pctx, ginf->nid) <= 0) {
        FUNC6(s, SSL_AD_INTERNAL_ERROR, SSL_F_SSL_GENERATE_PKEY_GROUP,
                 ERR_R_EVP_LIB);
        goto err;
    }
    if (FUNC4(pctx, &pkey) <= 0) {
        FUNC6(s, SSL_AD_INTERNAL_ERROR, SSL_F_SSL_GENERATE_PKEY_GROUP,
                 ERR_R_EVP_LIB);
        FUNC3(pkey);
        pkey = NULL;
    }

 err:
    FUNC0(pctx);
    return pkey;
}