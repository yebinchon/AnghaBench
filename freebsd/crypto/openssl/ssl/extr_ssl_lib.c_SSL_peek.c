
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SSL ;


 int SSL_F_SSL_PEEK ;
 int SSL_R_BAD_LENGTH ;
 int SSLerr (int ,int ) ;
 int ssl_peek_internal (int *,void*,size_t,size_t*) ;

int SSL_peek(SSL *s, void *buf, int num)
{
    int ret;
    size_t readbytes;

    if (num < 0) {
        SSLerr(SSL_F_SSL_PEEK, SSL_R_BAD_LENGTH);
        return -1;
    }

    ret = ssl_peek_internal(s, buf, (size_t)num, &readbytes);





    if (ret > 0)
        ret = (int)readbytes;

    return ret;
}
