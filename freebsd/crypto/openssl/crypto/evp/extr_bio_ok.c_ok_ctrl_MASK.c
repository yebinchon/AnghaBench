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
struct TYPE_3__ {long buf_len; long buf_off; int cont; int finished; int sigio; int /*<<< orphan*/  md; int /*<<< orphan*/  blockout; int /*<<< orphan*/  buf_off_save; int /*<<< orphan*/  buf_len_save; } ;
typedef  int /*<<< orphan*/  EVP_MD ;
typedef  TYPE_1__ BIO_OK_CTX ;
typedef  int /*<<< orphan*/  BIO ;

/* Variables and functions */
#define  BIO_CTRL_EOF 136 
#define  BIO_CTRL_FLUSH 135 
#define  BIO_CTRL_INFO 134 
#define  BIO_CTRL_PENDING 133 
#define  BIO_CTRL_RESET 132 
#define  BIO_CTRL_WPENDING 131 
#define  BIO_C_DO_STATE_MACHINE 130 
#define  BIO_C_GET_MD 129 
#define  BIO_C_SET_MD 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 long FUNC2 (int /*<<< orphan*/ *,int,long,void*) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static long FUNC11(BIO *b, int cmd, long num, void *ptr)
{
    BIO_OK_CTX *ctx;
    EVP_MD *md;
    const EVP_MD **ppmd;
    long ret = 1;
    int i;
    BIO *next;

    ctx = FUNC3(b);
    next = FUNC5(b);

    switch (cmd) {
    case BIO_CTRL_RESET:
        ctx->buf_len = 0;
        ctx->buf_off = 0;
        ctx->buf_len_save = 0;
        ctx->buf_off_save = 0;
        ctx->cont = 1;
        ctx->finished = 0;
        ctx->blockout = 0;
        ctx->sigio = 1;
        ret = FUNC2(next, cmd, num, ptr);
        break;
    case BIO_CTRL_EOF:         /* More to read */
        if (ctx->cont <= 0)
            ret = 1;
        else
            ret = FUNC2(next, cmd, num, ptr);
        break;
    case BIO_CTRL_PENDING:     /* More to read in buffer */
    case BIO_CTRL_WPENDING:    /* More to read in buffer */
        ret = ctx->blockout ? ctx->buf_len - ctx->buf_off : 0;
        if (ret <= 0)
            ret = FUNC2(next, cmd, num, ptr);
        break;
    case BIO_CTRL_FLUSH:
        /* do a final write */
        if (ctx->blockout == 0)
            if (!FUNC9(b))
                return 0;

        while (ctx->blockout) {
            i = FUNC10(b, NULL, 0);
            if (i < 0) {
                ret = i;
                break;
            }
        }

        ctx->finished = 1;
        ctx->buf_off = ctx->buf_len = 0;
        ctx->cont = (int)ret;

        /* Finally flush the underlying BIO */
        ret = FUNC2(next, cmd, num, ptr);
        break;
    case BIO_C_DO_STATE_MACHINE:
        FUNC0(b);
        ret = FUNC2(next, cmd, num, ptr);
        FUNC1(b);
        break;
    case BIO_CTRL_INFO:
        ret = (long)ctx->cont;
        break;
    case BIO_C_SET_MD:
        md = ptr;
        if (!FUNC7(ctx->md, md, NULL))
            return 0;
        FUNC6(b, 1);
        break;
    case BIO_C_GET_MD:
        if (FUNC4(b)) {
            ppmd = ptr;
            *ppmd = FUNC8(ctx->md);
        } else
            ret = 0;
        break;
    default:
        ret = FUNC2(next, cmd, num, ptr);
        break;
    }
    return ret;
}