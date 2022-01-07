
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int encrypt; } ;
typedef TYPE_1__ EVP_CIPHER_CTX ;


 int EVP_F_EVP_ENCRYPTUPDATE ;
 int EVP_R_INVALID_OPERATION ;
 int EVPerr (int ,int ) ;
 int evp_EncryptDecryptUpdate (TYPE_1__*,unsigned char*,int*,unsigned char const*,int) ;

int EVP_EncryptUpdate(EVP_CIPHER_CTX *ctx, unsigned char *out, int *outl,
                      const unsigned char *in, int inl)
{

    if (!ctx->encrypt) {
        EVPerr(EVP_F_EVP_ENCRYPTUPDATE, EVP_R_INVALID_OPERATION);
        return 0;
    }

    return evp_EncryptDecryptUpdate(ctx, out, outl, in, inl);
}
