
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {TYPE_1__* data; } ;
struct TYPE_6__ {int const* md; } ;
typedef TYPE_1__ TLS1_PRF_PKEY_CTX ;
typedef TYPE_2__ EVP_PKEY_CTX ;
typedef int EVP_MD ;


 int EVP_PKEY_CTRL_TLS_SECRET ;
 int EVP_PKEY_CTRL_TLS_SEED ;
 int EVP_PKEY_CTX_hex2ctrl (TYPE_2__*,int ,char const*) ;
 int EVP_PKEY_CTX_str2ctrl (TYPE_2__*,int ,char const*) ;
 int * EVP_get_digestbyname (char const*) ;
 int KDF_F_PKEY_TLS1_PRF_CTRL_STR ;
 int KDF_R_INVALID_DIGEST ;
 int KDF_R_UNKNOWN_PARAMETER_TYPE ;
 int KDF_R_VALUE_MISSING ;
 int KDFerr (int ,int ) ;
 scalar_t__ strcmp (char const*,char*) ;

__attribute__((used)) static int pkey_tls1_prf_ctrl_str(EVP_PKEY_CTX *ctx,
                                  const char *type, const char *value)
{
    if (value == ((void*)0)) {
        KDFerr(KDF_F_PKEY_TLS1_PRF_CTRL_STR, KDF_R_VALUE_MISSING);
        return 0;
    }
    if (strcmp(type, "md") == 0) {
        TLS1_PRF_PKEY_CTX *kctx = ctx->data;

        const EVP_MD *md = EVP_get_digestbyname(value);
        if (md == ((void*)0)) {
            KDFerr(KDF_F_PKEY_TLS1_PRF_CTRL_STR, KDF_R_INVALID_DIGEST);
            return 0;
        }
        kctx->md = md;
        return 1;
    }
    if (strcmp(type, "secret") == 0)
        return EVP_PKEY_CTX_str2ctrl(ctx, EVP_PKEY_CTRL_TLS_SECRET, value);
    if (strcmp(type, "hexsecret") == 0)
        return EVP_PKEY_CTX_hex2ctrl(ctx, EVP_PKEY_CTRL_TLS_SECRET, value);
    if (strcmp(type, "seed") == 0)
        return EVP_PKEY_CTX_str2ctrl(ctx, EVP_PKEY_CTRL_TLS_SEED, value);
    if (strcmp(type, "hexseed") == 0)
        return EVP_PKEY_CTX_hex2ctrl(ctx, EVP_PKEY_CTRL_TLS_SEED, value);

    KDFerr(KDF_F_PKEY_TLS1_PRF_CTRL_STR, KDF_R_UNKNOWN_PARAMETER_TYPE);
    return -2;
}
