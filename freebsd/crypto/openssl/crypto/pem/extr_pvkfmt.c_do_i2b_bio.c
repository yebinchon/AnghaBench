
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int EVP_PKEY ;
typedef int BIO ;


 int BIO_write (int *,unsigned char*,int) ;
 int OPENSSL_free (unsigned char*) ;
 int do_i2b (unsigned char**,int *,int) ;

__attribute__((used)) static int do_i2b_bio(BIO *out, EVP_PKEY *pk, int ispub)
{
    unsigned char *tmp = ((void*)0);
    int outlen, wrlen;
    outlen = do_i2b(&tmp, pk, ispub);
    if (outlen < 0)
        return -1;
    wrlen = BIO_write(out, tmp, outlen);
    OPENSSL_free(tmp);
    if (wrlen == outlen)
        return outlen;
    return -1;
}
