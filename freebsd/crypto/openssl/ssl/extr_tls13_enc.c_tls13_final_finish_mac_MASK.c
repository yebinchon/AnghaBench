#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  hash ;
typedef  int /*<<< orphan*/  finsecret ;
struct TYPE_12__ {unsigned char* server_finished_secret; unsigned char* client_finished_secret; int /*<<< orphan*/  client_app_traffic_secret; TYPE_2__* method; } ;
struct TYPE_11__ {TYPE_1__* ssl3_enc; } ;
struct TYPE_10__ {char const* server_finished_label; } ;
typedef  TYPE_3__ SSL ;
typedef  int /*<<< orphan*/  EVP_PKEY ;
typedef  int /*<<< orphan*/  EVP_MD_CTX ;
typedef  int /*<<< orphan*/  EVP_MD ;

/* Variables and functions */
 int /*<<< orphan*/  ERR_R_INTERNAL_ERROR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,unsigned char*,size_t*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,unsigned char*,size_t) ; 
 int EVP_MAX_MD_SIZE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 () ; 
 int /*<<< orphan*/  EVP_PKEY_HMAC ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,unsigned char*,size_t) ; 
 int /*<<< orphan*/  FUNC7 (unsigned char*,int) ; 
 int /*<<< orphan*/  SSL_AD_INTERNAL_ERROR ; 
 int /*<<< orphan*/  SSL_F_TLS13_FINAL_FINISH_MAC ; 
 scalar_t__ FUNC8 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_3__*,unsigned char*,int,size_t*) ; 
 int /*<<< orphan*/ * FUNC11 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned char*,size_t) ; 

size_t FUNC13(SSL *s, const char *str, size_t slen,
                             unsigned char *out)
{
    const EVP_MD *md = FUNC11(s);
    unsigned char hash[EVP_MAX_MD_SIZE];
    size_t hashlen, ret = 0;
    EVP_PKEY *key = NULL;
    EVP_MD_CTX *ctx = FUNC4();

    if (!FUNC10(s, hash, sizeof(hash), &hashlen)) {
        /* SSLfatal() already called */
        goto err;
    }

    if (str == s->method->ssl3_enc->server_finished_label) {
        key = FUNC6(EVP_PKEY_HMAC, NULL,
                                           s->server_finished_secret, hashlen);
    } else if (FUNC8(s)) {
        key = FUNC6(EVP_PKEY_HMAC, NULL,
                                           s->client_finished_secret, hashlen);
    } else {
        unsigned char finsecret[EVP_MAX_MD_SIZE];

        if (!FUNC12(s, FUNC11(s),
                                      s->client_app_traffic_secret,
                                      finsecret, hashlen))
            goto err;

        key = FUNC6(EVP_PKEY_HMAC, NULL, finsecret,
                                           hashlen);
        FUNC7(finsecret, sizeof(finsecret));
    }

    if (key == NULL
            || ctx == NULL
            || FUNC1(ctx, NULL, md, NULL, key) <= 0
            || FUNC2(ctx, hash, hashlen) <= 0
            || FUNC0(ctx, out, &hashlen) <= 0) {
        FUNC9(s, SSL_AD_INTERNAL_ERROR, SSL_F_TLS13_FINAL_FINISH_MAC,
                 ERR_R_INTERNAL_ERROR);
        goto err;
    }

    ret = hashlen;
 err:
    FUNC5(key);
    FUNC3(ctx);
    return ret;
}