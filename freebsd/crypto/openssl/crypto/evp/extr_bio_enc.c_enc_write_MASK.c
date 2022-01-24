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
struct TYPE_3__ {int buf_len; int buf_off; int /*<<< orphan*/ * buf; scalar_t__ ok; int /*<<< orphan*/  cipher; } ;
typedef  TYPE_1__ BIO_ENC_CTX ;
typedef  int /*<<< orphan*/  BIO ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int ENC_BLOCK_SIZE ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int*,unsigned char const*,int) ; 

__attribute__((used)) static int FUNC6(BIO *b, const char *in, int inl)
{
    int ret = 0, n, i;
    BIO_ENC_CTX *ctx;
    BIO *next;

    ctx = FUNC2(b);
    next = FUNC3(b);
    if ((ctx == NULL) || (next == NULL))
        return 0;

    ret = inl;

    FUNC0(b);
    n = ctx->buf_len - ctx->buf_off;
    while (n > 0) {
        i = FUNC4(next, &(ctx->buf[ctx->buf_off]), n);
        if (i <= 0) {
            FUNC1(b);
            return i;
        }
        ctx->buf_off += i;
        n -= i;
    }
    /* at this point all pending data has been written */

    if ((in == NULL) || (inl <= 0))
        return 0;

    ctx->buf_off = 0;
    while (inl > 0) {
        n = (inl > ENC_BLOCK_SIZE) ? ENC_BLOCK_SIZE : inl;
        if (!FUNC5(ctx->cipher,
                              ctx->buf, &ctx->buf_len,
                              (const unsigned char *)in, n)) {
            FUNC0(b);
            ctx->ok = 0;
            return 0;
        }
        inl -= n;
        in += n;

        ctx->buf_off = 0;
        n = ctx->buf_len;
        while (n > 0) {
            i = FUNC4(next, &(ctx->buf[ctx->buf_off]), n);
            if (i <= 0) {
                FUNC1(b);
                return (ret == inl) ? i : ret - inl;
            }
            n -= i;
            ctx->buf_off += i;
        }
        ctx->buf_len = 0;
        ctx->buf_off = 0;
    }
    FUNC1(b);
    return ret;
}