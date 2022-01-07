
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SSL ;


 scalar_t__ DTLS_VERSION_LT (int,int) ;
 int SSL_IS_DTLS (int const*) ;

__attribute__((used)) static int version_cmp(const SSL *s, int a, int b)
{
    int dtls = SSL_IS_DTLS(s);

    if (a == b)
        return 0;
    if (!dtls)
        return a < b ? -1 : 1;
    return DTLS_VERSION_LT(a, b) ? -1 : 1;
}
