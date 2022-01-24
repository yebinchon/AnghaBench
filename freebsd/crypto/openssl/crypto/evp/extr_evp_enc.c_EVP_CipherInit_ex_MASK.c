#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {scalar_t__ nid; int flags; int block_size; int /*<<< orphan*/  (* init ) (TYPE_1__*,unsigned char const*,unsigned char const*,int) ;int /*<<< orphan*/  key_len; scalar_t__ ctx_size; } ;
struct TYPE_12__ {int encrypt; unsigned long flags; unsigned char const* oiv; unsigned char const* iv; int block_mask; TYPE_2__ const* cipher; scalar_t__ final_used; scalar_t__ buf_len; int /*<<< orphan*/  num; int /*<<< orphan*/  key_len; int /*<<< orphan*/ * cipher_data; int /*<<< orphan*/ * engine; } ;
typedef  TYPE_1__ EVP_CIPHER_CTX ;
typedef  TYPE_2__ EVP_CIPHER ;
typedef  int /*<<< orphan*/  ENGINE ;

/* Variables and functions */
 TYPE_2__* FUNC0 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/ * FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ERR_R_MALLOC_FAILURE ; 
 int EVP_CIPHER_CTX_FLAG_WRAP_ALLOW ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC5 (TYPE_1__*) ; 
 int FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 int EVP_CIPH_ALWAYS_CALL_INIT ; 
#define  EVP_CIPH_CBC_MODE 133 
#define  EVP_CIPH_CFB_MODE 132 
 int EVP_CIPH_CTRL_INIT ; 
#define  EVP_CIPH_CTR_MODE 131 
 int EVP_CIPH_CUSTOM_IV ; 
#define  EVP_CIPH_ECB_MODE 130 
#define  EVP_CIPH_OFB_MODE 129 
#define  EVP_CIPH_STREAM_CIPHER 128 
 int EVP_CIPH_WRAP_MODE ; 
 int /*<<< orphan*/  EVP_CTRL_INIT ; 
 int /*<<< orphan*/  EVP_F_EVP_CIPHERINIT_EX ; 
 int /*<<< orphan*/  EVP_R_INITIALIZATION_ERROR ; 
 int /*<<< orphan*/  EVP_R_NO_CIPHER_SET ; 
 int /*<<< orphan*/  EVP_R_WRAP_MODE_NOT_ALLOWED ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int /*<<< orphan*/ * FUNC11 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (unsigned char const*,unsigned char const*,int) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*,unsigned char const*,unsigned char const*,int) ; 

int FUNC14(EVP_CIPHER_CTX *ctx, const EVP_CIPHER *cipher,
                      ENGINE *impl, const unsigned char *key,
                      const unsigned char *iv, int enc)
{
    if (enc == -1)
        enc = ctx->encrypt;
    else {
        if (enc)
            enc = 1;
        ctx->encrypt = enc;
    }
#ifndef OPENSSL_NO_ENGINE
    /*
     * Whether it's nice or not, "Inits" can be used on "Final"'d contexts so
     * this context may already have an ENGINE! Try to avoid releasing the
     * previous handle, re-querying for an ENGINE, and having a
     * reinitialisation, when it may all be unnecessary.
     */
    if (ctx->engine && ctx->cipher
        && (cipher == NULL || cipher->nid == ctx->cipher->nid))
        goto skip_to_init;
#endif
    if (cipher) {
        /*
         * Ensure a context left lying around from last time is cleared (the
         * previous check attempted to avoid this if the same ENGINE and
         * EVP_CIPHER could be used).
         */
        if (ctx->cipher) {
            unsigned long flags = ctx->flags;
            FUNC7(ctx);
            /* Restore encrypt and flags */
            ctx->encrypt = enc;
            ctx->flags = flags;
        }
#ifndef OPENSSL_NO_ENGINE
        if (impl) {
            if (!FUNC2(impl)) {
                FUNC9(EVP_F_EVP_CIPHERINIT_EX, EVP_R_INITIALIZATION_ERROR);
                return 0;
            }
        } else
            /* Ask if an ENGINE is reserved for this job */
            impl = FUNC1(cipher->nid);
        if (impl) {
            /* There's an ENGINE for this job ... (apparently) */
            const EVP_CIPHER *c = FUNC0(impl, cipher->nid);
            if (!c) {
                /*
                 * One positive side-effect of US's export control history,
                 * is that we should at least be able to avoid using US
                 * misspellings of "initialisation"?
                 */
                FUNC9(EVP_F_EVP_CIPHERINIT_EX, EVP_R_INITIALIZATION_ERROR);
                return 0;
            }
            /* We'll use the ENGINE's private cipher definition */
            cipher = c;
            /*
             * Store the ENGINE functional reference so we know 'cipher' came
             * from an ENGINE and we need to release it when done.
             */
            ctx->engine = impl;
        } else
            ctx->engine = NULL;
#endif

        ctx->cipher = cipher;
        if (ctx->cipher->ctx_size) {
            ctx->cipher_data = FUNC11(ctx->cipher->ctx_size);
            if (ctx->cipher_data == NULL) {
                ctx->cipher = NULL;
                FUNC9(EVP_F_EVP_CIPHERINIT_EX, ERR_R_MALLOC_FAILURE);
                return 0;
            }
        } else {
            ctx->cipher_data = NULL;
        }
        ctx->key_len = cipher->key_len;
        /* Preserve wrap enable flag, zero everything else */
        ctx->flags &= EVP_CIPHER_CTX_FLAG_WRAP_ALLOW;
        if (ctx->cipher->flags & EVP_CIPH_CTRL_INIT) {
            if (!FUNC4(ctx, EVP_CTRL_INIT, 0, NULL)) {
                ctx->cipher = NULL;
                FUNC9(EVP_F_EVP_CIPHERINIT_EX, EVP_R_INITIALIZATION_ERROR);
                return 0;
            }
        }
    } else if (!ctx->cipher) {
        FUNC9(EVP_F_EVP_CIPHERINIT_EX, EVP_R_NO_CIPHER_SET);
        return 0;
    }
#ifndef OPENSSL_NO_ENGINE
 skip_to_init:
#endif
    /* we assume block size is a power of 2 in *cryptUpdate */
    FUNC10(ctx->cipher->block_size == 1
                   || ctx->cipher->block_size == 8
                   || ctx->cipher->block_size == 16);

    if (!(ctx->flags & EVP_CIPHER_CTX_FLAG_WRAP_ALLOW)
        && FUNC6(ctx) == EVP_CIPH_WRAP_MODE) {
        FUNC9(EVP_F_EVP_CIPHERINIT_EX, EVP_R_WRAP_MODE_NOT_ALLOWED);
        return 0;
    }

    if (!(FUNC8(FUNC3(ctx)) & EVP_CIPH_CUSTOM_IV)) {
        switch (FUNC6(ctx)) {

        case EVP_CIPH_STREAM_CIPHER:
        case EVP_CIPH_ECB_MODE:
            break;

        case EVP_CIPH_CFB_MODE:
        case EVP_CIPH_OFB_MODE:

            ctx->num = 0;
            /* fall-through */

        case EVP_CIPH_CBC_MODE:

            FUNC10(FUNC5(ctx) <=
                           (int)sizeof(ctx->iv));
            if (iv)
                FUNC12(ctx->oiv, iv, FUNC5(ctx));
            FUNC12(ctx->iv, ctx->oiv, FUNC5(ctx));
            break;

        case EVP_CIPH_CTR_MODE:
            ctx->num = 0;
            /* Don't reuse IV for CTR mode */
            if (iv)
                FUNC12(ctx->iv, iv, FUNC5(ctx));
            break;

        default:
            return 0;
        }
    }

    if (key || (ctx->cipher->flags & EVP_CIPH_ALWAYS_CALL_INIT)) {
        if (!ctx->cipher->init(ctx, key, iv, enc))
            return 0;
    }
    ctx->buf_len = 0;
    ctx->final_used = 0;
    ctx->block_mask = ctx->cipher->block_size - 1;
    return 1;
}