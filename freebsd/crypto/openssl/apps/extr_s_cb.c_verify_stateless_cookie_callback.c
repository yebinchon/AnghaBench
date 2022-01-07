
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SSL ;


 int verify_cookie_callback (int *,unsigned char const*,size_t) ;

int verify_stateless_cookie_callback(SSL *ssl, const unsigned char *cookie,
                                     size_t cookie_len)
{
    return verify_cookie_callback(ssl, cookie, cookie_len);
}
