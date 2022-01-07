
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int EVP_ENCODE_CTX ;
typedef int BIO ;


 int BIO_write (int *,char const*,int) ;
 int ERR_R_BUF_LIB ;
 int ERR_R_MALLOC_FAILURE ;
 int EVP_ENCODE_CTX_free (int *) ;
 int * EVP_ENCODE_CTX_new () ;
 int EVP_EncodeFinal (int *,unsigned char*,int*) ;
 int EVP_EncodeInit (int *) ;
 int EVP_EncodeUpdate (int *,unsigned char*,int*,unsigned char const*,int) ;
 int OPENSSL_clear_free (unsigned char*,int) ;
 unsigned char* OPENSSL_malloc (int) ;
 int PEM_BUFSIZE ;
 int PEM_F_PEM_WRITE_BIO ;
 int PEMerr (int ,int) ;
 int strlen (char const*) ;

int PEM_write_bio(BIO *bp, const char *name, const char *header,
                  const unsigned char *data, long len)
{
    int nlen, n, i, j, outl;
    unsigned char *buf = ((void*)0);
    EVP_ENCODE_CTX *ctx = EVP_ENCODE_CTX_new();
    int reason = ERR_R_BUF_LIB;
    int retval = 0;

    if (ctx == ((void*)0)) {
        reason = ERR_R_MALLOC_FAILURE;
        goto err;
    }

    EVP_EncodeInit(ctx);
    nlen = strlen(name);

    if ((BIO_write(bp, "-----BEGIN ", 11) != 11) ||
        (BIO_write(bp, name, nlen) != nlen) ||
        (BIO_write(bp, "-----\n", 6) != 6))
        goto err;

    i = strlen(header);
    if (i > 0) {
        if ((BIO_write(bp, header, i) != i) || (BIO_write(bp, "\n", 1) != 1))
            goto err;
    }

    buf = OPENSSL_malloc(PEM_BUFSIZE * 8);
    if (buf == ((void*)0)) {
        reason = ERR_R_MALLOC_FAILURE;
        goto err;
    }

    i = j = 0;
    while (len > 0) {
        n = (int)((len > (PEM_BUFSIZE * 5)) ? (PEM_BUFSIZE * 5) : len);
        if (!EVP_EncodeUpdate(ctx, buf, &outl, &(data[j]), n))
            goto err;
        if ((outl) && (BIO_write(bp, (char *)buf, outl) != outl))
            goto err;
        i += outl;
        len -= n;
        j += n;
    }
    EVP_EncodeFinal(ctx, buf, &outl);
    if ((outl > 0) && (BIO_write(bp, (char *)buf, outl) != outl))
        goto err;
    if ((BIO_write(bp, "-----END ", 9) != 9) ||
        (BIO_write(bp, name, nlen) != nlen) ||
        (BIO_write(bp, "-----\n", 6) != 6))
        goto err;
    retval = i + outl;

 err:
    if (retval == 0)
        PEMerr(PEM_F_PEM_WRITE_BIO, reason);
    EVP_ENCODE_CTX_free(ctx);
    OPENSSL_clear_free(buf, PEM_BUFSIZE * 8);
    return retval;
}
