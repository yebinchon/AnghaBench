
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
typedef int EVP_MD_CTX ;
typedef int EVP_MD ;


 int ERR_R_MALLOC_FAILURE ;
 int EVP_DigestFinal_ex (int *,unsigned char*,int *) ;
 int EVP_DigestInit_ex (int *,int const*,int *) ;
 int EVP_DigestUpdate (int *,unsigned char*,int) ;
 int EVP_MD_CTX_free (int *) ;
 int * EVP_MD_CTX_new () ;
 int EVP_MD_block_size (int const*) ;
 int EVP_MD_size (int const*) ;
 int OPENSSL_free (unsigned char*) ;
 unsigned char* OPENSSL_malloc (int) ;
 int PKCS12_F_PKCS12_KEY_GEN_UNI ;
 int PKCS12err (int ,int ) ;
 int fprintf (int ,char*,...) ;
 int h__dump (unsigned char*,int) ;
 int memcpy (unsigned char*,unsigned char*,int ) ;
 int min (int,int) ;
 int stderr ;

int PKCS12_key_gen_uni(unsigned char *pass, int passlen, unsigned char *salt,
                       int saltlen, int id, int iter, int n,
                       unsigned char *out, const EVP_MD *md_type)
{
    unsigned char *B = ((void*)0), *D = ((void*)0), *I = ((void*)0), *p = ((void*)0), *Ai = ((void*)0);
    int Slen, Plen, Ilen;
    int i, j, u, v;
    int ret = 0;
    EVP_MD_CTX *ctx = ((void*)0);





    ctx = EVP_MD_CTX_new();
    if (ctx == ((void*)0))
        goto err;
    v = EVP_MD_block_size(md_type);
    u = EVP_MD_size(md_type);
    if (u < 0 || v <= 0)
        goto err;
    D = OPENSSL_malloc(v);
    Ai = OPENSSL_malloc(u);
    B = OPENSSL_malloc(v + 1);
    Slen = v * ((saltlen + v - 1) / v);
    if (passlen)
        Plen = v * ((passlen + v - 1) / v);
    else
        Plen = 0;
    Ilen = Slen + Plen;
    I = OPENSSL_malloc(Ilen);
    if (D == ((void*)0) || Ai == ((void*)0) || B == ((void*)0) || I == ((void*)0))
        goto err;
    for (i = 0; i < v; i++)
        D[i] = id;
    p = I;
    for (i = 0; i < Slen; i++)
        *p++ = salt[i % saltlen];
    for (i = 0; i < Plen; i++)
        *p++ = pass[i % passlen];
    for (;;) {
        if (!EVP_DigestInit_ex(ctx, md_type, ((void*)0))
            || !EVP_DigestUpdate(ctx, D, v)
            || !EVP_DigestUpdate(ctx, I, Ilen)
            || !EVP_DigestFinal_ex(ctx, Ai, ((void*)0)))
            goto err;
        for (j = 1; j < iter; j++) {
            if (!EVP_DigestInit_ex(ctx, md_type, ((void*)0))
                || !EVP_DigestUpdate(ctx, Ai, u)
                || !EVP_DigestFinal_ex(ctx, Ai, ((void*)0)))
                goto err;
        }
        memcpy(out, Ai, min(n, u));
        if (u >= n) {




            ret = 1;
            goto end;
        }
        n -= u;
        out += u;
        for (j = 0; j < v; j++)
            B[j] = Ai[j % u];
        for (j = 0; j < Ilen; j += v) {
            int k;
            unsigned char *Ij = I + j;
            uint16_t c = 1;


            for (k = v - 1; k >= 0; k--) {
                c += Ij[k] + B[k];
                Ij[k] = (unsigned char)c;
                c >>= 8;
            }
        }
    }

 err:
    PKCS12err(PKCS12_F_PKCS12_KEY_GEN_UNI, ERR_R_MALLOC_FAILURE);

 end:
    OPENSSL_free(Ai);
    OPENSSL_free(B);
    OPENSSL_free(D);
    OPENSSL_free(I);
    EVP_MD_CTX_free(ctx);
    return ret;
}
