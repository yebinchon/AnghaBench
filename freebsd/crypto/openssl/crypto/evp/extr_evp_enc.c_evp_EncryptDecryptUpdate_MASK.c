#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int buf_len; int block_mask; unsigned char const* buf; TYPE_1__* cipher; } ;
struct TYPE_9__ {int block_size; int flags; int (* do_cipher ) (TYPE_2__*,unsigned char*,unsigned char const*,int) ;} ;
typedef  TYPE_2__ EVP_CIPHER_CTX ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int EVP_CIPH_FLAG_CUSTOM_CIPHER ; 
 int /*<<< orphan*/  EVP_CIPH_FLAG_LENGTH_BITS ; 
 int /*<<< orphan*/  EVP_F_EVP_ENCRYPTDECRYPTUPDATE ; 
 int /*<<< orphan*/  EVP_R_PARTIALLY_OVERLAPPING ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ FUNC3 (unsigned char*,unsigned char const*,int) ; 
 int /*<<< orphan*/  FUNC4 (unsigned char const*,unsigned char const*,int) ; 
 int FUNC5 (TYPE_2__*,unsigned char*,unsigned char const*,int) ; 
 int FUNC6 (TYPE_2__*,unsigned char*,unsigned char const*,int) ; 
 int FUNC7 (TYPE_2__*,unsigned char*,unsigned char const*,int) ; 
 int FUNC8 (TYPE_2__*,unsigned char*,unsigned char const*,int) ; 

__attribute__((used)) static int FUNC9(EVP_CIPHER_CTX *ctx,
                                    unsigned char *out, int *outl,
                                    const unsigned char *in, int inl)
{
    int i, j, bl, cmpl = inl;

    if (FUNC0(ctx, EVP_CIPH_FLAG_LENGTH_BITS))
        cmpl = (cmpl + 7) / 8;

    bl = ctx->cipher->block_size;

    if (ctx->cipher->flags & EVP_CIPH_FLAG_CUSTOM_CIPHER) {
        /* If block size > 1 then the cipher will have to do this check */
        if (bl == 1 && FUNC3(out, in, cmpl)) {
            FUNC1(EVP_F_EVP_ENCRYPTDECRYPTUPDATE, EVP_R_PARTIALLY_OVERLAPPING);
            return 0;
        }

        i = ctx->cipher->do_cipher(ctx, out, in, inl);
        if (i < 0)
            return 0;
        else
            *outl = i;
        return 1;
    }

    if (inl <= 0) {
        *outl = 0;
        return inl == 0;
    }
    if (FUNC3(out + ctx->buf_len, in, cmpl)) {
        FUNC1(EVP_F_EVP_ENCRYPTDECRYPTUPDATE, EVP_R_PARTIALLY_OVERLAPPING);
        return 0;
    }

    if (ctx->buf_len == 0 && (inl & (ctx->block_mask)) == 0) {
        if (ctx->cipher->do_cipher(ctx, out, in, inl)) {
            *outl = inl;
            return 1;
        } else {
            *outl = 0;
            return 0;
        }
    }
    i = ctx->buf_len;
    FUNC2(bl <= (int)sizeof(ctx->buf));
    if (i != 0) {
        if (bl - i > inl) {
            FUNC4(&(ctx->buf[i]), in, inl);
            ctx->buf_len += inl;
            *outl = 0;
            return 1;
        } else {
            j = bl - i;
            FUNC4(&(ctx->buf[i]), in, j);
            inl -= j;
            in += j;
            if (!ctx->cipher->do_cipher(ctx, out, ctx->buf, bl))
                return 0;
            out += bl;
            *outl = bl;
        }
    } else
        *outl = 0;
    i = inl & (bl - 1);
    inl -= i;
    if (inl > 0) {
        if (!ctx->cipher->do_cipher(ctx, out, in, inl))
            return 0;
        *outl += inl;
    }

    if (i != 0)
        FUNC4(ctx->buf, &(in[inl]), i);
    ctx->buf_len = i;
    return 1;
}