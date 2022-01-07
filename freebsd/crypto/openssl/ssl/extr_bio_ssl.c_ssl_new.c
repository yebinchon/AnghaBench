
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BIO_SSL ;
typedef int BIO ;


 int BIO_F_SSL_NEW ;
 int BIO_clear_flags (int *,int ) ;
 int BIO_set_data (int *,int *) ;
 int BIO_set_init (int *,int ) ;
 int BIOerr (int ,int ) ;
 int ERR_R_MALLOC_FAILURE ;
 int * OPENSSL_zalloc (int) ;

__attribute__((used)) static int ssl_new(BIO *bi)
{
    BIO_SSL *bs = OPENSSL_zalloc(sizeof(*bs));

    if (bs == ((void*)0)) {
        BIOerr(BIO_F_SSL_NEW, ERR_R_MALLOC_FAILURE);
        return 0;
    }
    BIO_set_init(bi, 0);
    BIO_set_data(bi, bs);

    BIO_clear_flags(bi, ~0);

    return 1;
}
