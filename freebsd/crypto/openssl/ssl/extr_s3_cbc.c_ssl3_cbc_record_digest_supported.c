
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int EVP_MD_CTX ;


 int EVP_MD_CTX_type (int const*) ;







char ssl3_cbc_record_digest_supported(const EVP_MD_CTX *ctx)
{
    switch (EVP_MD_CTX_type(ctx)) {
    case 133:
    case 132:
    case 131:
    case 130:
    case 129:
    case 128:
        return 1;
    default:
        return 0;
    }
}
