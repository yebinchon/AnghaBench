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
struct cipher_data_st {int flags; int /*<<< orphan*/  blocksize; int /*<<< orphan*/  keylen; int /*<<< orphan*/  devcryptoid; } ;
struct TYPE_3__ {scalar_t__ ses; void* key; int /*<<< orphan*/  keylen; int /*<<< orphan*/  cipher; } ;
struct cipher_ctx {int mode; TYPE_1__ sess; int /*<<< orphan*/  blocksize; int /*<<< orphan*/  op; } ;
typedef  int /*<<< orphan*/  EVP_CIPHER_CTX ;

/* Variables and functions */
 int /*<<< orphan*/  CIOCGSESSION ; 
 int /*<<< orphan*/  COP_DECRYPT ; 
 int /*<<< orphan*/  COP_ENCRYPT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int EVP_CIPH_MODE ; 
 int /*<<< orphan*/  SYS_F_IOCTL ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cfd ; 
 scalar_t__ FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  errno ; 
 struct cipher_data_st* FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 

__attribute__((used)) static int FUNC6(EVP_CIPHER_CTX *ctx, const unsigned char *key,
                       const unsigned char *iv, int enc)
{
    struct cipher_ctx *cipher_ctx =
        (struct cipher_ctx *)FUNC0(ctx);
    const struct cipher_data_st *cipher_d =
        FUNC4(FUNC1(ctx));

    /* cleanup a previous session */
    if (cipher_ctx->sess.ses != 0 &&
        FUNC3(&cipher_ctx->sess) == 0)
        return 0;

    cipher_ctx->sess.cipher = cipher_d->devcryptoid;
    cipher_ctx->sess.keylen = cipher_d->keylen;
    cipher_ctx->sess.key = (void *)key;
    cipher_ctx->op = enc ? COP_ENCRYPT : COP_DECRYPT;
    cipher_ctx->mode = cipher_d->flags & EVP_CIPH_MODE;
    cipher_ctx->blocksize = cipher_d->blocksize;
    if (FUNC5(cfd, CIOCGSESSION, &cipher_ctx->sess) < 0) {
        FUNC2(SYS_F_IOCTL, errno);
        return 0;
    }

    return 1;
}