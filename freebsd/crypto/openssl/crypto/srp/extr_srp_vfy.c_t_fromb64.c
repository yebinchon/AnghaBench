
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int EVP_ENCODE_CTX ;


 int EVP_DecodeFinal (int *,unsigned char*,int*) ;
 int EVP_DecodeInit (int *) ;
 scalar_t__ EVP_DecodeUpdate (int *,unsigned char*,int*,unsigned char const*,size_t) ;
 int EVP_ENCODE_CTX_USE_SRP_ALPHABET ;
 int EVP_ENCODE_CTX_free (int *) ;
 int * EVP_ENCODE_CTX_new () ;
 size_t INT_MAX ;
 int evp_encode_ctx_set_flags (int *,int ) ;
 int memmove (unsigned char*,unsigned char*,int) ;
 size_t strlen (char const*) ;

__attribute__((used)) static int t_fromb64(unsigned char *a, size_t alen, const char *src)
{
    EVP_ENCODE_CTX *ctx;
    int outl = 0, outl2 = 0;
    size_t size, padsize;
    const unsigned char *pad = (const unsigned char *)"00";

    while (*src == ' ' || *src == '\t' || *src == '\n')
        ++src;
    size = strlen(src);
    padsize = 4 - (size & 3);
    padsize &= 3;


    if (size > INT_MAX || ((size + padsize) / 4) * 3 > alen)
        return -1;

    ctx = EVP_ENCODE_CTX_new();
    if (ctx == ((void*)0))
        return -1;
    if (padsize == 3) {
        outl = -1;
        goto err;
    }



    EVP_DecodeInit(ctx);
    evp_encode_ctx_set_flags(ctx, EVP_ENCODE_CTX_USE_SRP_ALPHABET);


    if (padsize != 0
            && EVP_DecodeUpdate(ctx, a, &outl, pad, padsize) < 0) {
        outl = -1;
        goto err;
    }
    if (EVP_DecodeUpdate(ctx, a, &outl2, (const unsigned char *)src, size) < 0) {
        outl = -1;
        goto err;
    }
    outl += outl2;
    EVP_DecodeFinal(ctx, a + outl, &outl2);
    outl += outl2;


    if (padsize != 0) {
        if ((int)padsize >= outl) {
            outl = -1;
            goto err;
        }
        memmove(a, a + padsize, outl - padsize);
        outl -= padsize;
    }

 err:
    EVP_ENCODE_CTX_free(ctx);

    return outl;
}
