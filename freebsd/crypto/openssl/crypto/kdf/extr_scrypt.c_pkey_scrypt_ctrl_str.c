
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int EVP_PKEY_CTX ;


 int EVP_PKEY_CTRL_PASS ;
 int EVP_PKEY_CTRL_SCRYPT_MAXMEM_BYTES ;
 int EVP_PKEY_CTRL_SCRYPT_N ;
 int EVP_PKEY_CTRL_SCRYPT_P ;
 int EVP_PKEY_CTRL_SCRYPT_R ;
 int EVP_PKEY_CTRL_SCRYPT_SALT ;
 int EVP_PKEY_CTX_hex2ctrl (int *,int ,char const*) ;
 int EVP_PKEY_CTX_str2ctrl (int *,int ,char const*) ;
 int KDF_F_PKEY_SCRYPT_CTRL_STR ;
 int KDF_R_UNKNOWN_PARAMETER_TYPE ;
 int KDF_R_VALUE_MISSING ;
 int KDFerr (int ,int ) ;
 int pkey_scrypt_ctrl_uint64 (int *,int ,char const*) ;
 scalar_t__ strcmp (char const*,char*) ;

__attribute__((used)) static int pkey_scrypt_ctrl_str(EVP_PKEY_CTX *ctx, const char *type,
                                const char *value)
{
    if (value == ((void*)0)) {
        KDFerr(KDF_F_PKEY_SCRYPT_CTRL_STR, KDF_R_VALUE_MISSING);
        return 0;
    }

    if (strcmp(type, "pass") == 0)
        return EVP_PKEY_CTX_str2ctrl(ctx, EVP_PKEY_CTRL_PASS, value);

    if (strcmp(type, "hexpass") == 0)
        return EVP_PKEY_CTX_hex2ctrl(ctx, EVP_PKEY_CTRL_PASS, value);

    if (strcmp(type, "salt") == 0)
        return EVP_PKEY_CTX_str2ctrl(ctx, EVP_PKEY_CTRL_SCRYPT_SALT, value);

    if (strcmp(type, "hexsalt") == 0)
        return EVP_PKEY_CTX_hex2ctrl(ctx, EVP_PKEY_CTRL_SCRYPT_SALT, value);

    if (strcmp(type, "N") == 0)
        return pkey_scrypt_ctrl_uint64(ctx, EVP_PKEY_CTRL_SCRYPT_N, value);

    if (strcmp(type, "r") == 0)
        return pkey_scrypt_ctrl_uint64(ctx, EVP_PKEY_CTRL_SCRYPT_R, value);

    if (strcmp(type, "p") == 0)
        return pkey_scrypt_ctrl_uint64(ctx, EVP_PKEY_CTRL_SCRYPT_P, value);

    if (strcmp(type, "maxmem_bytes") == 0)
        return pkey_scrypt_ctrl_uint64(ctx, EVP_PKEY_CTRL_SCRYPT_MAXMEM_BYTES,
                                       value);

    KDFerr(KDF_F_PKEY_SCRYPT_CTRL_STR, KDF_R_UNKNOWN_PARAMETER_TYPE);
    return -2;
}
