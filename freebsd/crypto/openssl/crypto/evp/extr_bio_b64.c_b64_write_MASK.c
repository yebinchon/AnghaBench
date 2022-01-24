#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {scalar_t__ encode; int buf_len; int buf_off; int tmp_len; int /*<<< orphan*/ * buf; int /*<<< orphan*/  base64; int /*<<< orphan*/ * tmp; } ;
typedef  TYPE_1__ BIO_B64_CTX ;
typedef  int /*<<< orphan*/  BIO ;

/* Variables and functions */
 int B64_BLOCK_SIZE ; 
 scalar_t__ B64_ENCODE ; 
 int BIO_FLAGS_BASE64_NO_NL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 void* FUNC6 (unsigned char*,unsigned char const*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,unsigned char*,int*,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,char const*,int) ; 

__attribute__((used)) static int FUNC11(BIO *b, const char *in, int inl)
{
    int ret = 0;
    int n;
    int i;
    BIO_B64_CTX *ctx;
    BIO *next;

    ctx = (BIO_B64_CTX *)FUNC2(b);
    next = FUNC4(b);
    if ((ctx == NULL) || (next == NULL))
        return 0;

    FUNC0(b);

    if (ctx->encode != B64_ENCODE) {
        ctx->encode = B64_ENCODE;
        ctx->buf_len = 0;
        ctx->buf_off = 0;
        ctx->tmp_len = 0;
        FUNC7(ctx->base64);
    }

    FUNC9(ctx->buf_off < (int)sizeof(ctx->buf));
    FUNC9(ctx->buf_len <= (int)sizeof(ctx->buf));
    FUNC9(ctx->buf_len >= ctx->buf_off);
    n = ctx->buf_len - ctx->buf_off;
    while (n > 0) {
        i = FUNC5(next, &(ctx->buf[ctx->buf_off]), n);
        if (i <= 0) {
            FUNC1(b);
            return i;
        }
        FUNC9(i <= n);
        ctx->buf_off += i;
        FUNC9(ctx->buf_off <= (int)sizeof(ctx->buf));
        FUNC9(ctx->buf_len >= ctx->buf_off);
        n -= i;
    }
    /* at this point all pending data has been written */
    ctx->buf_off = 0;
    ctx->buf_len = 0;

    if ((in == NULL) || (inl <= 0))
        return 0;

    while (inl > 0) {
        n = (inl > B64_BLOCK_SIZE) ? B64_BLOCK_SIZE : inl;

        if (FUNC3(b) & BIO_FLAGS_BASE64_NO_NL) {
            if (ctx->tmp_len > 0) {
                FUNC9(ctx->tmp_len <= 3);
                n = 3 - ctx->tmp_len;
                /*
                 * There's a theoretical possibility for this
                 */
                if (n > inl)
                    n = inl;
                FUNC10(&(ctx->tmp[ctx->tmp_len]), in, n);
                ctx->tmp_len += n;
                ret += n;
                if (ctx->tmp_len < 3)
                    break;
                ctx->buf_len =
                    FUNC6((unsigned char *)ctx->buf,
                                    (unsigned char *)ctx->tmp, ctx->tmp_len);
                FUNC9(ctx->buf_len <= (int)sizeof(ctx->buf));
                FUNC9(ctx->buf_len >= ctx->buf_off);
                /*
                 * Since we're now done using the temporary buffer, the
                 * length should be 0'd
                 */
                ctx->tmp_len = 0;
            } else {
                if (n < 3) {
                    FUNC10(ctx->tmp, in, n);
                    ctx->tmp_len = n;
                    ret += n;
                    break;
                }
                n -= n % 3;
                ctx->buf_len =
                    FUNC6((unsigned char *)ctx->buf,
                                    (const unsigned char *)in, n);
                FUNC9(ctx->buf_len <= (int)sizeof(ctx->buf));
                FUNC9(ctx->buf_len >= ctx->buf_off);
                ret += n;
            }
        } else {
            if (!FUNC8(ctx->base64,
                                 (unsigned char *)ctx->buf, &ctx->buf_len,
                                 (unsigned char *)in, n))
                return ((ret == 0) ? -1 : ret);
            FUNC9(ctx->buf_len <= (int)sizeof(ctx->buf));
            FUNC9(ctx->buf_len >= ctx->buf_off);
            ret += n;
        }
        inl -= n;
        in += n;

        ctx->buf_off = 0;
        n = ctx->buf_len;
        while (n > 0) {
            i = FUNC5(next, &(ctx->buf[ctx->buf_off]), n);
            if (i <= 0) {
                FUNC1(b);
                return ((ret == 0) ? i : ret);
            }
            FUNC9(i <= n);
            n -= i;
            ctx->buf_off += i;
            FUNC9(ctx->buf_off <= (int)sizeof(ctx->buf));
            FUNC9(ctx->buf_len >= ctx->buf_off);
        }
        ctx->buf_len = 0;
        ctx->buf_off = 0;
    }
    return ret;
}