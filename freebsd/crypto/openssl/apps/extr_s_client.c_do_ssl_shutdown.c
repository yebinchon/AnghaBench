
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SSL ;






 int SSL_get_error (int *,int) ;
 int SSL_shutdown (int *) ;

__attribute__((used)) static void do_ssl_shutdown(SSL *ssl)
{
    int ret;

    do {

        ret = SSL_shutdown(ssl);
        if (ret < 0) {
            switch (SSL_get_error(ssl, ret)) {
            case 129:
            case 128:
            case 131:
            case 130:

                continue;
            }
            ret = 0;
        }
    } while (ret < 0);
}
