
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int flags; int final_used; unsigned char* final; int buf_len; TYPE_1__* cipher; scalar_t__ encrypt; } ;
struct TYPE_7__ {unsigned int block_size; int flags; int (* do_cipher ) (TYPE_2__*,unsigned char*,unsigned char const*,int) ;} ;
typedef scalar_t__ PTRDIFF_T ;
typedef TYPE_2__ EVP_CIPHER_CTX ;


 scalar_t__ EVP_CIPHER_CTX_test_flags (TYPE_2__*,int ) ;
 int EVP_CIPH_FLAG_CUSTOM_CIPHER ;
 int EVP_CIPH_FLAG_LENGTH_BITS ;
 int EVP_CIPH_NO_PADDING ;
 int EVP_F_EVP_DECRYPTUPDATE ;
 int EVP_R_INVALID_OPERATION ;
 int EVP_R_PARTIALLY_OVERLAPPING ;
 int EVPerr (int ,int ) ;
 int OPENSSL_assert (int) ;
 int evp_EncryptDecryptUpdate (TYPE_2__*,unsigned char*,int*,unsigned char const*,int) ;
 scalar_t__ is_partially_overlapping (unsigned char*,unsigned char const*,unsigned int) ;
 int memcpy (unsigned char*,unsigned char*,unsigned int) ;
 int stub1 (TYPE_2__*,unsigned char*,unsigned char const*,int) ;

int EVP_DecryptUpdate(EVP_CIPHER_CTX *ctx, unsigned char *out, int *outl,
                      const unsigned char *in, int inl)
{
    int fix_len, cmpl = inl;
    unsigned int b;


    if (ctx->encrypt) {
        EVPerr(EVP_F_EVP_DECRYPTUPDATE, EVP_R_INVALID_OPERATION);
        return 0;
    }

    b = ctx->cipher->block_size;

    if (EVP_CIPHER_CTX_test_flags(ctx, EVP_CIPH_FLAG_LENGTH_BITS))
        cmpl = (cmpl + 7) / 8;

    if (ctx->cipher->flags & EVP_CIPH_FLAG_CUSTOM_CIPHER) {
        if (b == 1 && is_partially_overlapping(out, in, cmpl)) {
            EVPerr(EVP_F_EVP_DECRYPTUPDATE, EVP_R_PARTIALLY_OVERLAPPING);
            return 0;
        }

        fix_len = ctx->cipher->do_cipher(ctx, out, in, inl);
        if (fix_len < 0) {
            *outl = 0;
            return 0;
        } else
            *outl = fix_len;
        return 1;
    }

    if (inl <= 0) {
        *outl = 0;
        return inl == 0;
    }

    if (ctx->flags & EVP_CIPH_NO_PADDING)
        return evp_EncryptDecryptUpdate(ctx, out, outl, in, inl);

    OPENSSL_assert(b <= sizeof(ctx->final));

    if (ctx->final_used) {

        if (((PTRDIFF_T)out == (PTRDIFF_T)in)
            || is_partially_overlapping(out, in, b)) {
            EVPerr(EVP_F_EVP_DECRYPTUPDATE, EVP_R_PARTIALLY_OVERLAPPING);
            return 0;
        }
        memcpy(out, ctx->final, b);
        out += b;
        fix_len = 1;
    } else
        fix_len = 0;

    if (!evp_EncryptDecryptUpdate(ctx, out, outl, in, inl))
        return 0;





    if (b > 1 && !ctx->buf_len) {
        *outl -= b;
        ctx->final_used = 1;
        memcpy(ctx->final, &out[*outl], b);
    } else
        ctx->final_used = 0;

    if (fix_len)
        *outl += b;

    return 1;
}
