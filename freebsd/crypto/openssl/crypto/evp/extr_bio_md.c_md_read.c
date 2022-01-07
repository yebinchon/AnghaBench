
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int EVP_MD_CTX ;
typedef int BIO ;


 int BIO_clear_retry_flags (int *) ;
 int BIO_copy_next_retry (int *) ;
 int * BIO_get_data (int *) ;
 scalar_t__ BIO_get_init (int *) ;
 int * BIO_next (int *) ;
 int BIO_read (int *,char*,int) ;
 scalar_t__ EVP_DigestUpdate (int *,unsigned char*,unsigned int) ;

__attribute__((used)) static int md_read(BIO *b, char *out, int outl)
{
    int ret = 0;
    EVP_MD_CTX *ctx;
    BIO *next;

    if (out == ((void*)0))
        return 0;

    ctx = BIO_get_data(b);
    next = BIO_next(b);

    if ((ctx == ((void*)0)) || (next == ((void*)0)))
        return 0;

    ret = BIO_read(next, out, outl);
    if (BIO_get_init(b)) {
        if (ret > 0) {
            if (EVP_DigestUpdate(ctx, (unsigned char *)out,
                                 (unsigned int)ret) <= 0)
                return -1;
        }
    }
    BIO_clear_retry_flags(b);
    BIO_copy_next_retry(b);
    return ret;
}
