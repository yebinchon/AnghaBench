#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {TYPE_2__* session; TYPE_1__* s3; } ;
struct TYPE_8__ {int /*<<< orphan*/  master_key; scalar_t__ master_key_length; } ;
struct TYPE_7__ {int /*<<< orphan*/  handshake_dgst; } ;
typedef  TYPE_3__ SSL ;
typedef  int /*<<< orphan*/  EVP_MD_CTX ;

/* Variables and functions */
 int /*<<< orphan*/  ERR_R_INTERNAL_ERROR ; 
 int /*<<< orphan*/  ERR_R_MALLOC_FAILURE ; 
 int /*<<< orphan*/  EVP_CTRL_SSL3_MASTER_SECRET ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,unsigned char*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 () ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ NID_md5_sha1 ; 
 int /*<<< orphan*/  SSL_AD_INTERNAL_ERROR ; 
 int /*<<< orphan*/  SSL_F_SSL3_FINAL_FINISH_MAC ; 
 int /*<<< orphan*/  SSL_R_NO_REQUIRED_DIGEST ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*,int /*<<< orphan*/ ) ; 

size_t FUNC10(SSL *s, const char *sender, size_t len,
                             unsigned char *p)
{
    int ret;
    EVP_MD_CTX *ctx = NULL;

    if (!FUNC9(s, 0)) {
        /* SSLfatal() already called */
        return 0;
    }

    if (FUNC7(s->s3->handshake_dgst) != NID_md5_sha1) {
        FUNC8(s, SSL_AD_INTERNAL_ERROR, SSL_F_SSL3_FINAL_FINISH_MAC,
                 SSL_R_NO_REQUIRED_DIGEST);
        return 0;
    }

    ctx = FUNC5();
    if (ctx == NULL) {
        FUNC8(s, SSL_AD_INTERNAL_ERROR, SSL_F_SSL3_FINAL_FINISH_MAC,
                 ERR_R_MALLOC_FAILURE);
        return 0;
    }
    if (!FUNC2(ctx, s->s3->handshake_dgst)) {
        FUNC8(s, SSL_AD_INTERNAL_ERROR, SSL_F_SSL3_FINAL_FINISH_MAC,
                 ERR_R_INTERNAL_ERROR);
        ret = 0;
        goto err;
    }

    ret = FUNC6(ctx);
    if (ret < 0) {
        FUNC8(s, SSL_AD_INTERNAL_ERROR, SSL_F_SSL3_FINAL_FINISH_MAC,
                 ERR_R_INTERNAL_ERROR);
        ret = 0;
        goto err;
    }

    if ((sender != NULL && FUNC1(ctx, sender, len) <= 0)
        || FUNC3(ctx, EVP_CTRL_SSL3_MASTER_SECRET,
                           (int)s->session->master_key_length,
                           s->session->master_key) <= 0
        || FUNC0(ctx, p, NULL) <= 0) {
        FUNC8(s, SSL_AD_INTERNAL_ERROR, SSL_F_SSL3_FINAL_FINISH_MAC,
                 ERR_R_INTERNAL_ERROR);
        ret = 0;
    }

 err:
    FUNC4(ctx);

    return ret;
}