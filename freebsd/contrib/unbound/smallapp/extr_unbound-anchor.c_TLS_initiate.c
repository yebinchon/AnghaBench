
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int X509 ;
typedef int SSL_CTX ;
typedef int SSL ;


 int ERR_clear_error () ;
 int SSL_ERROR_WANT_READ ;
 int SSL_ERROR_WANT_WRITE ;
 int SSL_MODE_AUTO_RETRY ;
 int SSL_do_handshake (int *) ;
 int SSL_free (int *) ;
 int SSL_get_error (int *,int) ;
 int * SSL_get_peer_certificate (int *) ;
 int * SSL_new (int *) ;
 int SSL_set_connect_state (int *) ;
 int SSL_set_fd (int *,int) ;
 int SSL_set_mode (int *,int ) ;
 int X509_free (int *) ;
 int printf (char*) ;
 scalar_t__ verb ;
 int verb_cert (char*,int *) ;

__attribute__((used)) static SSL*
TLS_initiate(SSL_CTX* sslctx, int fd)
{
 X509* x;
 int r;
 SSL* ssl = SSL_new(sslctx);
 if(!ssl) {
  if(verb) printf("SSL_new error\n");
  return ((void*)0);
 }
 SSL_set_connect_state(ssl);
 (void)SSL_set_mode(ssl, SSL_MODE_AUTO_RETRY);
 if(!SSL_set_fd(ssl, fd)) {
  if(verb) printf("SSL_set_fd error\n");
  SSL_free(ssl);
  return ((void*)0);
 }
 while(1) {
  ERR_clear_error();
  if( (r=SSL_do_handshake(ssl)) == 1)
   break;
  r = SSL_get_error(ssl, r);
  if(r != SSL_ERROR_WANT_READ && r != SSL_ERROR_WANT_WRITE) {
   if(verb) printf("SSL handshake failed\n");
   SSL_free(ssl);
   return ((void*)0);
  }

 }
 x = SSL_get_peer_certificate(ssl);
 if(!x) {
  if(verb) printf("Server presented no peer certificate\n");
  SSL_free(ssl);
  return ((void*)0);
 }
 verb_cert("server SSL certificate", x);
 X509_free(x);
 return ssl;
}
