
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int EVP_CIPHER_CTX ;


 int dasync_cipher_ctrl_helper (int *,int,int,void*,int ) ;

__attribute__((used)) static int dasync_aes128_cbc_ctrl(EVP_CIPHER_CTX *ctx, int type, int arg,
                                  void *ptr)
{
    return dasync_cipher_ctrl_helper(ctx, type, arg, ptr, 0);
}
