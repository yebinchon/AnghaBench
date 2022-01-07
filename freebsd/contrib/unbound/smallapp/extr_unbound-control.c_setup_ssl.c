
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
 int SSL_get_error (int *,int) ;
 int * SSL_get_peer_certificate (int *) ;
 scalar_t__ SSL_get_verify_result (int *) ;
 int * SSL_new (int *) ;
 int SSL_set_connect_state (int *) ;
 int SSL_set_fd (int *,int) ;
 int SSL_set_mode (int *,int ) ;
 scalar_t__ X509_V_OK ;
 int X509_free (int *) ;
 int ssl_err (char*) ;

__attribute__((used)) static SSL*
setup_ssl(SSL_CTX* ctx, int fd)
{
 SSL* ssl;
 X509* x;
 int r;

 if(!ctx) return ((void*)0);
 ssl = SSL_new(ctx);
 if(!ssl)
  ssl_err("could not SSL_new");
 SSL_set_connect_state(ssl);
 (void)SSL_set_mode(ssl, SSL_MODE_AUTO_RETRY);
 if(!SSL_set_fd(ssl, fd))
  ssl_err("could not SSL_set_fd");
 while(1) {
  ERR_clear_error();
  if( (r=SSL_do_handshake(ssl)) == 1)
   break;
  r = SSL_get_error(ssl, r);
  if(r != SSL_ERROR_WANT_READ && r != SSL_ERROR_WANT_WRITE)
   ssl_err("SSL handshake failed");

 }


 if(SSL_get_verify_result(ssl) != X509_V_OK)
  ssl_err("SSL verification failed");
 x = SSL_get_peer_certificate(ssl);
 if(!x)
  ssl_err("Server presented no peer certificate");
 X509_free(x);

 return ssl;
}
