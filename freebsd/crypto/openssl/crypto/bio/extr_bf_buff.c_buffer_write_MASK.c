#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/ * next_bio; scalar_t__ ptr; } ;
struct TYPE_6__ {int obuf_size; int obuf_len; int obuf_off; char const* obuf; } ;
typedef  TYPE_1__ BIO_F_BUFFER_CTX ;
typedef  TYPE_2__ BIO ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int FUNC2 (int /*<<< orphan*/ *,char const*,int) ; 
 int /*<<< orphan*/  FUNC3 (char const*,char const*,int) ; 

__attribute__((used)) static int FUNC4(BIO *b, const char *in, int inl)
{
    int i, num = 0;
    BIO_F_BUFFER_CTX *ctx;

    if ((in == NULL) || (inl <= 0))
        return 0;
    ctx = (BIO_F_BUFFER_CTX *)b->ptr;
    if ((ctx == NULL) || (b->next_bio == NULL))
        return 0;

    FUNC0(b);
 start:
    i = ctx->obuf_size - (ctx->obuf_len + ctx->obuf_off);
    /* add to buffer and return */
    if (i >= inl) {
        FUNC3(&(ctx->obuf[ctx->obuf_off + ctx->obuf_len]), in, inl);
        ctx->obuf_len += inl;
        return (num + inl);
    }
    /* else */
    /* stuff already in buffer, so add to it first, then flush */
    if (ctx->obuf_len != 0) {
        if (i > 0) {            /* lets fill it up if we can */
            FUNC3(&(ctx->obuf[ctx->obuf_off + ctx->obuf_len]), in, i);
            in += i;
            inl -= i;
            num += i;
            ctx->obuf_len += i;
        }
        /* we now have a full buffer needing flushing */
        for (;;) {
            i = FUNC2(b->next_bio, &(ctx->obuf[ctx->obuf_off]),
                          ctx->obuf_len);
            if (i <= 0) {
                FUNC1(b);

                if (i < 0)
                    return ((num > 0) ? num : i);
                if (i == 0)
                    return num;
            }
            ctx->obuf_off += i;
            ctx->obuf_len -= i;
            if (ctx->obuf_len == 0)
                break;
        }
    }
    /*
     * we only get here if the buffer has been flushed and we still have
     * stuff to write
     */
    ctx->obuf_off = 0;

    /* we now have inl bytes to write */
    while (inl >= ctx->obuf_size) {
        i = FUNC2(b->next_bio, in, inl);
        if (i <= 0) {
            FUNC1(b);
            if (i < 0)
                return ((num > 0) ? num : i);
            if (i == 0)
                return num;
        }
        num += i;
        in += i;
        inl -= i;
        if (inl == 0)
            return num;
    }

    /*
     * copy the rest into the buffer since we have only a small amount left
     */
    goto start;
}