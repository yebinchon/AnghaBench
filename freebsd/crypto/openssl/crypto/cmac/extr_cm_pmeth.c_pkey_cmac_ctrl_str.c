
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int EVP_PKEY_CTX ;
typedef int EVP_CIPHER ;


 int EVP_PKEY_CTRL_CIPHER ;
 int EVP_PKEY_CTRL_SET_MAC_KEY ;
 int EVP_PKEY_CTX_hex2ctrl (int *,int ,char const*) ;
 int EVP_PKEY_CTX_str2ctrl (int *,int ,char const*) ;
 int * EVP_get_cipherbyname (char const*) ;
 int pkey_cmac_ctrl (int *,int ,int,void*) ;
 scalar_t__ strcmp (char const*,char*) ;

__attribute__((used)) static int pkey_cmac_ctrl_str(EVP_PKEY_CTX *ctx,
                              const char *type, const char *value)
{
    if (!value) {
        return 0;
    }
    if (strcmp(type, "cipher") == 0) {
        const EVP_CIPHER *c;
        c = EVP_get_cipherbyname(value);
        if (!c)
            return 0;
        return pkey_cmac_ctrl(ctx, EVP_PKEY_CTRL_CIPHER, -1, (void *)c);
    }
    if (strcmp(type, "key") == 0)
        return EVP_PKEY_CTX_str2ctrl(ctx, EVP_PKEY_CTRL_SET_MAC_KEY, value);
    if (strcmp(type, "hexkey") == 0)
        return EVP_PKEY_CTX_hex2ctrl(ctx, EVP_PKEY_CTRL_SET_MAC_KEY, value);
    return -2;
}
