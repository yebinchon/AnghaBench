
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SSL ;


 int ssl_peek_internal (int *,void*,size_t,size_t*) ;

int SSL_peek_ex(SSL *s, void *buf, size_t num, size_t *readbytes)
{
    int ret = ssl_peek_internal(s, buf, num, readbytes);

    if (ret < 0)
        ret = 0;
    return ret;
}
