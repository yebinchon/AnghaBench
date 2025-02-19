
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int flags; int* final; TYPE_1__* cipher; int final_used; scalar_t__ buf_len; scalar_t__ encrypt; } ;
struct TYPE_5__ {int flags; int (* do_cipher ) (TYPE_2__*,unsigned char*,int *,int ) ;unsigned int block_size; } ;
typedef TYPE_2__ EVP_CIPHER_CTX ;


 int EVP_CIPH_FLAG_CUSTOM_CIPHER ;
 int EVP_CIPH_NO_PADDING ;
 int EVP_F_EVP_DECRYPTFINAL_EX ;
 int EVP_R_BAD_DECRYPT ;
 int EVP_R_DATA_NOT_MULTIPLE_OF_BLOCK_LENGTH ;
 int EVP_R_INVALID_OPERATION ;
 int EVP_R_WRONG_FINAL_BLOCK_LENGTH ;
 int EVPerr (int ,int ) ;
 int OPENSSL_assert (int) ;
 int stub1 (TYPE_2__*,unsigned char*,int *,int ) ;

int EVP_DecryptFinal_ex(EVP_CIPHER_CTX *ctx, unsigned char *out, int *outl)
{
    int i, n;
    unsigned int b;


    if (ctx->encrypt) {
        EVPerr(EVP_F_EVP_DECRYPTFINAL_EX, EVP_R_INVALID_OPERATION);
        return 0;
    }

    *outl = 0;

    if (ctx->cipher->flags & EVP_CIPH_FLAG_CUSTOM_CIPHER) {
        i = ctx->cipher->do_cipher(ctx, out, ((void*)0), 0);
        if (i < 0)
            return 0;
        else
            *outl = i;
        return 1;
    }

    b = ctx->cipher->block_size;
    if (ctx->flags & EVP_CIPH_NO_PADDING) {
        if (ctx->buf_len) {
            EVPerr(EVP_F_EVP_DECRYPTFINAL_EX,
                   EVP_R_DATA_NOT_MULTIPLE_OF_BLOCK_LENGTH);
            return 0;
        }
        *outl = 0;
        return 1;
    }
    if (b > 1) {
        if (ctx->buf_len || !ctx->final_used) {
            EVPerr(EVP_F_EVP_DECRYPTFINAL_EX, EVP_R_WRONG_FINAL_BLOCK_LENGTH);
            return 0;
        }
        OPENSSL_assert(b <= sizeof(ctx->final));





        n = ctx->final[b - 1];
        if (n == 0 || n > (int)b) {
            EVPerr(EVP_F_EVP_DECRYPTFINAL_EX, EVP_R_BAD_DECRYPT);
            return 0;
        }
        for (i = 0; i < n; i++) {
            if (ctx->final[--b] != n) {
                EVPerr(EVP_F_EVP_DECRYPTFINAL_EX, EVP_R_BAD_DECRYPT);
                return 0;
            }
        }
        n = ctx->cipher->block_size - n;
        for (i = 0; i < n; i++)
            out[i] = ctx->final[i];
        *outl = n;
    } else
        *outl = 0;
    return 1;
}
