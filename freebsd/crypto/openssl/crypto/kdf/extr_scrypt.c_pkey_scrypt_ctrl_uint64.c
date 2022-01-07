
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int EVP_PKEY_CTX ;


 int KDF_F_PKEY_SCRYPT_CTRL_UINT64 ;
 int KDF_R_VALUE_ERROR ;
 int KDFerr (int ,int ) ;
 int atou64 (char const*,int *) ;
 int pkey_scrypt_ctrl (int *,int,int ,int *) ;

__attribute__((used)) static int pkey_scrypt_ctrl_uint64(EVP_PKEY_CTX *ctx, int type,
                                   const char *value)
{
    uint64_t int_value;

    if (!atou64(value, &int_value)) {
        KDFerr(KDF_F_PKEY_SCRYPT_CTRL_UINT64, KDF_R_VALUE_ERROR);
        return 0;
    }
    return pkey_scrypt_ctrl(ctx, type, 0, &int_value);
}
