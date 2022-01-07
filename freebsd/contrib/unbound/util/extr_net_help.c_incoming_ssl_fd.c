
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SSL_CTX ;
typedef void SSL ;


 int SSL_MODE_AUTO_RETRY ;
 int SSL_free (void*) ;
 void* SSL_new (int *) ;
 int SSL_set_accept_state (void*) ;
 int SSL_set_fd (void*,int) ;
 int SSL_set_mode (void*,int ) ;
 int log_crypto_err (char*) ;

void* incoming_ssl_fd(void* sslctx, int fd)
{
 (void)sslctx; (void)fd;
 return ((void*)0);

}
