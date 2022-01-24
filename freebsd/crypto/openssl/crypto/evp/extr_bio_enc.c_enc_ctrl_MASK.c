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
struct TYPE_3__ {int ok; int finished; long buf_len; long buf_off; int /*<<< orphan*/ * cipher; scalar_t__ buf; int /*<<< orphan*/  cont; } ;
typedef  int /*<<< orphan*/  EVP_CIPHER_CTX ;
typedef  TYPE_1__ BIO_ENC_CTX ;
typedef  int /*<<< orphan*/  BIO ;

/* Variables and functions */
#define  BIO_CTRL_DUP 136 
#define  BIO_CTRL_EOF 135 
#define  BIO_CTRL_FLUSH 134 
#define  BIO_CTRL_PENDING 133 
#define  BIO_CTRL_RESET 132 
#define  BIO_CTRL_WPENDING 131 
#define  BIO_C_DO_STATE_MACHINE 130 
#define  BIO_C_GET_CIPHER_CTX 129 
#define  BIO_C_GET_CIPHER_STATUS 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 long FUNC2 (int /*<<< orphan*/ *,int,long,void*) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 long FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 () ; 
 long FUNC9 (int /*<<< orphan*/ *,unsigned char*,long*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static long FUNC12(BIO *b, int cmd, long num, void *ptr)
{
    BIO *dbio;
    BIO_ENC_CTX *ctx, *dctx;
    long ret = 1;
    int i;
    EVP_CIPHER_CTX **c_ctx;
    BIO *next;

    ctx = FUNC3(b);
    next = FUNC4(b);
    if (ctx == NULL)
        return 0;

    switch (cmd) {
    case BIO_CTRL_RESET:
        ctx->ok = 1;
        ctx->finished = 0;
        if (!FUNC10(ctx->cipher, NULL, NULL, NULL, NULL,
                               FUNC7(ctx->cipher)))
            return 0;
        ret = FUNC2(next, cmd, num, ptr);
        break;
    case BIO_CTRL_EOF:         /* More to read */
        if (ctx->cont <= 0)
            ret = 1;
        else
            ret = FUNC2(next, cmd, num, ptr);
        break;
    case BIO_CTRL_WPENDING:
        ret = ctx->buf_len - ctx->buf_off;
        if (ret <= 0)
            ret = FUNC2(next, cmd, num, ptr);
        break;
    case BIO_CTRL_PENDING:     /* More to read in buffer */
        ret = ctx->buf_len - ctx->buf_off;
        if (ret <= 0)
            ret = FUNC2(next, cmd, num, ptr);
        break;
    case BIO_CTRL_FLUSH:
        /* do a final write */
 again:
        while (ctx->buf_len != ctx->buf_off) {
            i = FUNC11(b, NULL, 0);
            if (i < 0)
                return i;
        }

        if (!ctx->finished) {
            ctx->finished = 1;
            ctx->buf_off = 0;
            ret = FUNC9(ctx->cipher,
                                     (unsigned char *)ctx->buf,
                                     &(ctx->buf_len));
            ctx->ok = (int)ret;
            if (ret <= 0)
                break;

            /* push out the bytes */
            goto again;
        }

        /* Finally flush the underlying BIO */
        ret = FUNC2(next, cmd, num, ptr);
        break;
    case BIO_C_GET_CIPHER_STATUS:
        ret = (long)ctx->ok;
        break;
    case BIO_C_DO_STATE_MACHINE:
        FUNC0(b);
        ret = FUNC2(next, cmd, num, ptr);
        FUNC1(b);
        break;
    case BIO_C_GET_CIPHER_CTX:
        c_ctx = (EVP_CIPHER_CTX **)ptr;
        *c_ctx = ctx->cipher;
        FUNC5(b, 1);
        break;
    case BIO_CTRL_DUP:
        dbio = (BIO *)ptr;
        dctx = FUNC3(dbio);
        dctx->cipher = FUNC8();
        if (dctx->cipher == NULL)
            return 0;
        ret = FUNC6(dctx->cipher, ctx->cipher);
        if (ret)
            FUNC5(dbio, 1);
        break;
    default:
        ret = FUNC2(next, cmd, num, ptr);
        break;
    }
    return ret;
}