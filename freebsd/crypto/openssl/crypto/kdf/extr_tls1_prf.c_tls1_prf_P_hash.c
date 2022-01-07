
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int EVP_PKEY ;
typedef int EVP_MD_CTX ;
typedef int EVP_MD ;
typedef int A1 ;


 int EVP_DigestSignFinal (int *,unsigned char*,size_t*) ;
 int EVP_DigestSignInit (int *,int *,int const*,int *,int *) ;
 int EVP_DigestSignUpdate (int *,unsigned char const*,size_t) ;
 int EVP_MAX_MD_SIZE ;
 int EVP_MD_CTX_FLAG_NON_FIPS_ALLOW ;
 int EVP_MD_CTX_copy_ex (int *,int *) ;
 int EVP_MD_CTX_free (int *) ;
 int * EVP_MD_CTX_new () ;
 int EVP_MD_CTX_set_flags (int *,int ) ;
 int EVP_MD_size (int const*) ;
 int EVP_PKEY_HMAC ;
 int EVP_PKEY_free (int *) ;
 int * EVP_PKEY_new_raw_private_key (int ,int *,unsigned char const*,size_t) ;
 int OPENSSL_cleanse (unsigned char*,int) ;
 int memcpy (unsigned char*,unsigned char*,size_t) ;
 int ossl_assert (int) ;

__attribute__((used)) static int tls1_prf_P_hash(const EVP_MD *md,
                           const unsigned char *sec, size_t sec_len,
                           const unsigned char *seed, size_t seed_len,
                           unsigned char *out, size_t olen)
{
    int chunk;
    EVP_MD_CTX *ctx = ((void*)0), *ctx_tmp = ((void*)0), *ctx_init = ((void*)0);
    EVP_PKEY *mac_key = ((void*)0);
    unsigned char A1[EVP_MAX_MD_SIZE];
    size_t A1_len;
    int ret = 0;

    chunk = EVP_MD_size(md);
    if (!ossl_assert(chunk > 0))
        goto err;

    ctx = EVP_MD_CTX_new();
    ctx_tmp = EVP_MD_CTX_new();
    ctx_init = EVP_MD_CTX_new();
    if (ctx == ((void*)0) || ctx_tmp == ((void*)0) || ctx_init == ((void*)0))
        goto err;
    EVP_MD_CTX_set_flags(ctx_init, EVP_MD_CTX_FLAG_NON_FIPS_ALLOW);
    mac_key = EVP_PKEY_new_raw_private_key(EVP_PKEY_HMAC, ((void*)0), sec, sec_len);
    if (mac_key == ((void*)0))
        goto err;
    if (!EVP_DigestSignInit(ctx_init, ((void*)0), md, ((void*)0), mac_key))
        goto err;
    if (!EVP_MD_CTX_copy_ex(ctx, ctx_init))
        goto err;
    if (seed != ((void*)0) && !EVP_DigestSignUpdate(ctx, seed, seed_len))
        goto err;
    if (!EVP_DigestSignFinal(ctx, A1, &A1_len))
        goto err;

    for (;;) {

        if (!EVP_MD_CTX_copy_ex(ctx, ctx_init))
            goto err;
        if (!EVP_DigestSignUpdate(ctx, A1, A1_len))
            goto err;
        if (olen > (size_t)chunk && !EVP_MD_CTX_copy_ex(ctx_tmp, ctx))
            goto err;
        if (seed && !EVP_DigestSignUpdate(ctx, seed, seed_len))
            goto err;

        if (olen > (size_t)chunk) {
            size_t mac_len;
            if (!EVP_DigestSignFinal(ctx, out, &mac_len))
                goto err;
            out += mac_len;
            olen -= mac_len;

            if (!EVP_DigestSignFinal(ctx_tmp, A1, &A1_len))
                goto err;
        } else {

            if (!EVP_DigestSignFinal(ctx, A1, &A1_len))
                goto err;
            memcpy(out, A1, olen);
            break;
        }
    }
    ret = 1;
 err:
    EVP_PKEY_free(mac_key);
    EVP_MD_CTX_free(ctx);
    EVP_MD_CTX_free(ctx_tmp);
    EVP_MD_CTX_free(ctx_init);
    OPENSSL_cleanse(A1, sizeof(A1));
    return ret;
}
