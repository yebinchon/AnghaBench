
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int EVP_PKEY_CTX ;


 int EVP_PKEY_CTRL_HKDF_INFO ;
 int EVP_PKEY_CTRL_HKDF_KEY ;
 int EVP_PKEY_CTRL_HKDF_MD ;
 int EVP_PKEY_CTRL_HKDF_SALT ;
 int EVP_PKEY_CTX_hex2ctrl (int *,int ,char const*) ;
 int EVP_PKEY_CTX_hkdf_mode (int *,int) ;
 int EVP_PKEY_CTX_md (int *,int ,int ,char const*) ;
 int EVP_PKEY_CTX_str2ctrl (int *,int ,char const*) ;
 int EVP_PKEY_HKDEF_MODE_EXPAND_ONLY ;
 int EVP_PKEY_HKDEF_MODE_EXTRACT_AND_EXPAND ;
 int EVP_PKEY_HKDEF_MODE_EXTRACT_ONLY ;
 int EVP_PKEY_OP_DERIVE ;
 int KDF_F_PKEY_HKDF_CTRL_STR ;
 int KDF_R_UNKNOWN_PARAMETER_TYPE ;
 int KDFerr (int ,int ) ;
 scalar_t__ strcmp (char const*,char*) ;

__attribute__((used)) static int pkey_hkdf_ctrl_str(EVP_PKEY_CTX *ctx, const char *type,
                              const char *value)
{
    if (strcmp(type, "mode") == 0) {
        int mode;

        if (strcmp(value, "EXTRACT_AND_EXPAND") == 0)
            mode = EVP_PKEY_HKDEF_MODE_EXTRACT_AND_EXPAND;
        else if (strcmp(value, "EXTRACT_ONLY") == 0)
            mode = EVP_PKEY_HKDEF_MODE_EXTRACT_ONLY;
        else if (strcmp(value, "EXPAND_ONLY") == 0)
            mode = EVP_PKEY_HKDEF_MODE_EXPAND_ONLY;
        else
            return 0;

        return EVP_PKEY_CTX_hkdf_mode(ctx, mode);
    }

    if (strcmp(type, "md") == 0)
        return EVP_PKEY_CTX_md(ctx, EVP_PKEY_OP_DERIVE,
                               EVP_PKEY_CTRL_HKDF_MD, value);

    if (strcmp(type, "salt") == 0)
        return EVP_PKEY_CTX_str2ctrl(ctx, EVP_PKEY_CTRL_HKDF_SALT, value);

    if (strcmp(type, "hexsalt") == 0)
        return EVP_PKEY_CTX_hex2ctrl(ctx, EVP_PKEY_CTRL_HKDF_SALT, value);

    if (strcmp(type, "key") == 0)
        return EVP_PKEY_CTX_str2ctrl(ctx, EVP_PKEY_CTRL_HKDF_KEY, value);

    if (strcmp(type, "hexkey") == 0)
        return EVP_PKEY_CTX_hex2ctrl(ctx, EVP_PKEY_CTRL_HKDF_KEY, value);

    if (strcmp(type, "info") == 0)
        return EVP_PKEY_CTX_str2ctrl(ctx, EVP_PKEY_CTRL_HKDF_INFO, value);

    if (strcmp(type, "hexinfo") == 0)
        return EVP_PKEY_CTX_hex2ctrl(ctx, EVP_PKEY_CTRL_HKDF_INFO, value);

    KDFerr(KDF_F_PKEY_HKDF_CTRL_STR, KDF_R_UNKNOWN_PARAMETER_TYPE);
    return -2;
}
