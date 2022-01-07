
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SSL ;
typedef int BIO ;


 int BIO_NOCLOSE ;
 int * BIO_new (int ) ;
 int BIO_s_socket () ;
 int BIO_set_fd (int *,int,int ) ;
 int ERR_R_BUF_LIB ;
 int SSL_F_SSL_SET_FD ;
 int SSL_set_bio (int *,int *,int *) ;
 int SSLerr (int ,int ) ;

int SSL_set_fd(SSL *s, int fd)
{
    int ret = 0;
    BIO *bio = ((void*)0);

    bio = BIO_new(BIO_s_socket());

    if (bio == ((void*)0)) {
        SSLerr(SSL_F_SSL_SET_FD, ERR_R_BUF_LIB);
        goto err;
    }
    BIO_set_fd(bio, fd, BIO_NOCLOSE);
    SSL_set_bio(s, bio, bio);
    ret = 1;
 err:
    return ret;
}
