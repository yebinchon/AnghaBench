
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SSL ;


 size_t ssl_undefined_function (int *) ;

__attribute__((used)) static size_t ssl_undefined_function_5(SSL *ssl, const char *r, size_t s,
                                       unsigned char *t)
{
    (void)r;
    (void)s;
    (void)t;
    return ssl_undefined_function(ssl);
}
