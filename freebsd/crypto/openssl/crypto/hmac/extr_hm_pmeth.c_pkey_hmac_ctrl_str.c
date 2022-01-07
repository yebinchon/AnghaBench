
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int EVP_PKEY_CTX ;


 int EVP_PKEY_CTRL_SET_MAC_KEY ;
 int EVP_PKEY_CTX_hex2ctrl (int *,int ,char const*) ;
 int EVP_PKEY_CTX_str2ctrl (int *,int ,char const*) ;
 scalar_t__ strcmp (char const*,char*) ;

__attribute__((used)) static int pkey_hmac_ctrl_str(EVP_PKEY_CTX *ctx,
                              const char *type, const char *value)
{
    if (!value) {
        return 0;
    }
    if (strcmp(type, "key") == 0)
        return EVP_PKEY_CTX_str2ctrl(ctx, EVP_PKEY_CTRL_SET_MAC_KEY, value);
    if (strcmp(type, "hexkey") == 0)
        return EVP_PKEY_CTX_hex2ctrl(ctx, EVP_PKEY_CTRL_SET_MAC_KEY, value);
    return -2;
}
