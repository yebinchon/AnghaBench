#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int length; int num; unsigned char const* enc_data; int flags; } ;
typedef  TYPE_1__ EVP_ENCODE_CTX ;

/* Variables and functions */
 int EVP_ENCODE_CTX_NO_NEWLINES ; 
 size_t INT_MAX ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (TYPE_1__*,unsigned char*,unsigned char const*,int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char const*,unsigned char const*,int) ; 

int FUNC3(EVP_ENCODE_CTX *ctx, unsigned char *out, int *outl,
                      const unsigned char *in, int inl)
{
    int i, j;
    size_t total = 0;

    *outl = 0;
    if (inl <= 0)
        return 0;
    FUNC0(ctx->length <= (int)sizeof(ctx->enc_data));
    if (ctx->length - ctx->num > inl) {
        FUNC2(&(ctx->enc_data[ctx->num]), in, inl);
        ctx->num += inl;
        return 1;
    }
    if (ctx->num != 0) {
        i = ctx->length - ctx->num;
        FUNC2(&(ctx->enc_data[ctx->num]), in, i);
        in += i;
        inl -= i;
        j = FUNC1(ctx, out, ctx->enc_data, ctx->length);
        ctx->num = 0;
        out += j;
        total = j;
        if ((ctx->flags & EVP_ENCODE_CTX_NO_NEWLINES) == 0) {
            *(out++) = '\n';
            total++;
        }
        *out = '\0';
    }
    while (inl >= ctx->length && total <= INT_MAX) {
        j = FUNC1(ctx, out, in, ctx->length);
        in += ctx->length;
        inl -= ctx->length;
        out += j;
        total += j;
        if ((ctx->flags & EVP_ENCODE_CTX_NO_NEWLINES) == 0) {
            *(out++) = '\n';
            total++;
        }
        *out = '\0';
    }
    if (total > INT_MAX) {
        /* Too much output data! */
        *outl = 0;
        return 0;
    }
    if (inl != 0)
        FUNC2(&(ctx->enc_data[0]), in, inl);
    ctx->num = inl;
    *outl = total;

    return 1;
}