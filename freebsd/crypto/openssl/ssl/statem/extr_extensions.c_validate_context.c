
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SSL ;


 unsigned int SSL_EXT_DTLS_ONLY ;
 unsigned int SSL_EXT_TLS_ONLY ;
 scalar_t__ SSL_IS_DTLS (int *) ;

__attribute__((used)) static int validate_context(SSL *s, unsigned int extctx, unsigned int thisctx)
{

    if ((thisctx & extctx) == 0)
        return 0;

    if (SSL_IS_DTLS(s)) {
        if ((extctx & SSL_EXT_TLS_ONLY) != 0)
            return 0;
    } else if ((extctx & SSL_EXT_DTLS_ONLY) != 0) {
        return 0;
    }

    return 1;
}
