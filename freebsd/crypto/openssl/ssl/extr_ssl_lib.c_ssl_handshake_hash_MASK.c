#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {TYPE_1__* s3; } ;
struct TYPE_5__ {int /*<<< orphan*/ * handshake_dgst; } ;
typedef  TYPE_2__ SSL ;
typedef  int /*<<< orphan*/  EVP_MD_CTX ;

/* Variables and functions */
 int /*<<< orphan*/  ERR_R_INTERNAL_ERROR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,unsigned char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 () ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SSL_AD_INTERNAL_ERROR ; 
 int /*<<< orphan*/  SSL_F_SSL_HANDSHAKE_HASH ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC6(SSL *s, unsigned char *out, size_t outlen,
                       size_t *hashlen)
{
    EVP_MD_CTX *ctx = NULL;
    EVP_MD_CTX *hdgst = s->s3->handshake_dgst;
    int hashleni = FUNC4(hdgst);
    int ret = 0;

    if (hashleni < 0 || (size_t)hashleni > outlen) {
        FUNC5(s, SSL_AD_INTERNAL_ERROR, SSL_F_SSL_HANDSHAKE_HASH,
                 ERR_R_INTERNAL_ERROR);
        goto err;
    }

    ctx = FUNC3();
    if (ctx == NULL)
        goto err;

    if (!FUNC1(ctx, hdgst)
        || FUNC0(ctx, out, NULL) <= 0) {
        FUNC5(s, SSL_AD_INTERNAL_ERROR, SSL_F_SSL_HANDSHAKE_HASH,
                 ERR_R_INTERNAL_ERROR);
        goto err;
    }

    *hashlen = hashleni;

    ret = 1;
 err:
    FUNC2(ctx);
    return ret;
}