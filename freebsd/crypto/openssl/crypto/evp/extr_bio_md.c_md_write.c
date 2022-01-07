
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
 int BIO_write (int *,char const*,int) ;
 int EVP_DigestUpdate (int *,unsigned char const*,unsigned int) ;

__attribute__((used)) static int md_write(BIO *b, const char *in, int inl)
{
    int ret = 0;
    EVP_MD_CTX *ctx;
    BIO *next;

    if ((in == ((void*)0)) || (inl <= 0))
        return 0;

    ctx = BIO_get_data(b);
    next = BIO_next(b);
    if ((ctx != ((void*)0)) && (next != ((void*)0)))
        ret = BIO_write(next, in, inl);

    if (BIO_get_init(b)) {
        if (ret > 0) {
            if (!EVP_DigestUpdate(ctx, (const unsigned char *)in,
                                  (unsigned int)ret)) {
                BIO_clear_retry_flags(b);
                return 0;
            }
        }
    }
    if (next != ((void*)0)) {
        BIO_clear_retry_flags(b);
        BIO_copy_next_retry(b);
    }
    return ret;
}
