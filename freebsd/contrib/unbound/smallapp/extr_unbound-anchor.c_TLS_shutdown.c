
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SSL_CTX ;
typedef int SSL ;


 int SSL_CTX_free (int *) ;
 int SSL_free (int *) ;
 scalar_t__ SSL_shutdown (int *) ;
 int fd_close (int) ;

__attribute__((used)) static void
TLS_shutdown(int fd, SSL* ssl, SSL_CTX* sslctx)
{

 if(SSL_shutdown(ssl) == 0) {
  SSL_shutdown(ssl);
 }
 SSL_free(ssl);
 SSL_CTX_free(sslctx);
 fd_close(fd);
}
