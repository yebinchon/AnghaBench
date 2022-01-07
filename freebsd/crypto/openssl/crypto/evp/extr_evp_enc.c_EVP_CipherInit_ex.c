
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_13__ {scalar_t__ nid; int flags; int block_size; int (* init ) (TYPE_1__*,unsigned char const*,unsigned char const*,int) ;int key_len; scalar_t__ ctx_size; } ;
struct TYPE_12__ {int encrypt; unsigned long flags; unsigned char const* oiv; unsigned char const* iv; int block_mask; TYPE_2__ const* cipher; scalar_t__ final_used; scalar_t__ buf_len; int num; int key_len; int * cipher_data; int * engine; } ;
typedef TYPE_1__ EVP_CIPHER_CTX ;
typedef TYPE_2__ EVP_CIPHER ;
typedef int ENGINE ;


 TYPE_2__* ENGINE_get_cipher (int *,scalar_t__) ;
 int * ENGINE_get_cipher_engine (scalar_t__) ;
 int ENGINE_init (int *) ;
 int ERR_R_MALLOC_FAILURE ;
 int EVP_CIPHER_CTX_FLAG_WRAP_ALLOW ;
 int EVP_CIPHER_CTX_cipher (TYPE_1__*) ;
 int EVP_CIPHER_CTX_ctrl (TYPE_1__*,int ,int ,int *) ;
 int EVP_CIPHER_CTX_iv_length (TYPE_1__*) ;
 int EVP_CIPHER_CTX_mode (TYPE_1__*) ;
 int EVP_CIPHER_CTX_reset (TYPE_1__*) ;
 int EVP_CIPHER_flags (int ) ;
 int EVP_CIPH_ALWAYS_CALL_INIT ;


 int EVP_CIPH_CTRL_INIT ;

 int EVP_CIPH_CUSTOM_IV ;



 int EVP_CIPH_WRAP_MODE ;
 int EVP_CTRL_INIT ;
 int EVP_F_EVP_CIPHERINIT_EX ;
 int EVP_R_INITIALIZATION_ERROR ;
 int EVP_R_NO_CIPHER_SET ;
 int EVP_R_WRAP_MODE_NOT_ALLOWED ;
 int EVPerr (int ,int ) ;
 int OPENSSL_assert (int) ;
 int * OPENSSL_zalloc (scalar_t__) ;
 int memcpy (unsigned char const*,unsigned char const*,int) ;
 int stub1 (TYPE_1__*,unsigned char const*,unsigned char const*,int) ;

int EVP_CipherInit_ex(EVP_CIPHER_CTX *ctx, const EVP_CIPHER *cipher,
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







    if (ctx->engine && ctx->cipher
        && (cipher == ((void*)0) || cipher->nid == ctx->cipher->nid))
        goto skip_to_init;

    if (cipher) {





        if (ctx->cipher) {
            unsigned long flags = ctx->flags;
            EVP_CIPHER_CTX_reset(ctx);

            ctx->encrypt = enc;
            ctx->flags = flags;
        }

        if (impl) {
            if (!ENGINE_init(impl)) {
                EVPerr(EVP_F_EVP_CIPHERINIT_EX, EVP_R_INITIALIZATION_ERROR);
                return 0;
            }
        } else

            impl = ENGINE_get_cipher_engine(cipher->nid);
        if (impl) {

            const EVP_CIPHER *c = ENGINE_get_cipher(impl, cipher->nid);
            if (!c) {





                EVPerr(EVP_F_EVP_CIPHERINIT_EX, EVP_R_INITIALIZATION_ERROR);
                return 0;
            }

            cipher = c;




            ctx->engine = impl;
        } else
            ctx->engine = ((void*)0);


        ctx->cipher = cipher;
        if (ctx->cipher->ctx_size) {
            ctx->cipher_data = OPENSSL_zalloc(ctx->cipher->ctx_size);
            if (ctx->cipher_data == ((void*)0)) {
                ctx->cipher = ((void*)0);
                EVPerr(EVP_F_EVP_CIPHERINIT_EX, ERR_R_MALLOC_FAILURE);
                return 0;
            }
        } else {
            ctx->cipher_data = ((void*)0);
        }
        ctx->key_len = cipher->key_len;

        ctx->flags &= EVP_CIPHER_CTX_FLAG_WRAP_ALLOW;
        if (ctx->cipher->flags & EVP_CIPH_CTRL_INIT) {
            if (!EVP_CIPHER_CTX_ctrl(ctx, EVP_CTRL_INIT, 0, ((void*)0))) {
                ctx->cipher = ((void*)0);
                EVPerr(EVP_F_EVP_CIPHERINIT_EX, EVP_R_INITIALIZATION_ERROR);
                return 0;
            }
        }
    } else if (!ctx->cipher) {
        EVPerr(EVP_F_EVP_CIPHERINIT_EX, EVP_R_NO_CIPHER_SET);
        return 0;
    }

 skip_to_init:


    OPENSSL_assert(ctx->cipher->block_size == 1
                   || ctx->cipher->block_size == 8
                   || ctx->cipher->block_size == 16);

    if (!(ctx->flags & EVP_CIPHER_CTX_FLAG_WRAP_ALLOW)
        && EVP_CIPHER_CTX_mode(ctx) == EVP_CIPH_WRAP_MODE) {
        EVPerr(EVP_F_EVP_CIPHERINIT_EX, EVP_R_WRAP_MODE_NOT_ALLOWED);
        return 0;
    }

    if (!(EVP_CIPHER_flags(EVP_CIPHER_CTX_cipher(ctx)) & EVP_CIPH_CUSTOM_IV)) {
        switch (EVP_CIPHER_CTX_mode(ctx)) {

        case 128:
        case 130:
            break;

        case 132:
        case 129:

            ctx->num = 0;


        case 133:

            OPENSSL_assert(EVP_CIPHER_CTX_iv_length(ctx) <=
                           (int)sizeof(ctx->iv));
            if (iv)
                memcpy(ctx->oiv, iv, EVP_CIPHER_CTX_iv_length(ctx));
            memcpy(ctx->iv, ctx->oiv, EVP_CIPHER_CTX_iv_length(ctx));
            break;

        case 131:
            ctx->num = 0;

            if (iv)
                memcpy(ctx->iv, iv, EVP_CIPHER_CTX_iv_length(ctx));
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
