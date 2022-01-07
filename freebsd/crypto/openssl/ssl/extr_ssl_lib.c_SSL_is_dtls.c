
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SSL ;


 scalar_t__ SSL_IS_DTLS (int const*) ;

int SSL_is_dtls(const SSL *s)
{
    return SSL_IS_DTLS(s) ? 1 : 0;
}
