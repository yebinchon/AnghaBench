
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SSL_CTX ;
typedef int SSL ;


 int EX_CONFIG ;
 int EX_TEMPFAIL ;
 int * SSL_CTX_new (int ) ;
 int SSL_CTX_set_options (int *,int) ;
 int SSL_FILETYPE_PEM ;
 int SSL_OP_NO_SSLv2 ;
 int SSL_OP_NO_SSLv3 ;
 int SSL_accept (int *) ;
 int SSL_library_init () ;
 int SSL_load_error_strings () ;
 int * SSL_new (int *) ;
 int SSL_set_fd (int *,int) ;
 int SSL_use_RSAPrivateKey_file (int *,char const*,int ) ;
 int SSL_use_certificate_file (int *,char const*,int ) ;
 int TLS_server_method () ;
 int nonblock (int) ;
 int pjdlog_debug (int,char*) ;
 int pjdlog_debug_set (int) ;
 int pjdlog_exitx (int ,char*,...) ;
 int pjdlog_prefix_set (char*) ;
 scalar_t__ sandbox (char const*,int,char*) ;
 int setproctitle (char*) ;
 int ssl_check_error (int *,int) ;
 int ssl_log_errors () ;
 int tls_loop (int,int *) ;

__attribute__((used)) static void
tls_exec_server(const char *user, int startfd, const char *privkey,
    const char *cert, int debuglevel)
{
 SSL_CTX *sslctx;
 SSL *ssl;
 int sockfd, tcpfd, ret;

 pjdlog_debug_set(debuglevel);
 pjdlog_prefix_set("[TLS sandbox] (server) ");




 sockfd = startfd;
 tcpfd = startfd + 1;

 SSL_load_error_strings();
 SSL_library_init();

 sslctx = SSL_CTX_new(TLS_server_method());
 if (sslctx == ((void*)0))
  pjdlog_exitx(EX_TEMPFAIL, "SSL_CTX_new() failed.");

 SSL_CTX_set_options(sslctx, SSL_OP_NO_SSLv2 | SSL_OP_NO_SSLv3);

 ssl = SSL_new(sslctx);
 if (ssl == ((void*)0))
  pjdlog_exitx(EX_TEMPFAIL, "SSL_new() failed.");

 if (SSL_use_RSAPrivateKey_file(ssl, privkey, SSL_FILETYPE_PEM) != 1) {
  ssl_log_errors();
  pjdlog_exitx(EX_CONFIG,
      "SSL_use_RSAPrivateKey_file(%s) failed.", privkey);
 }

 if (SSL_use_certificate_file(ssl, cert, SSL_FILETYPE_PEM) != 1) {
  ssl_log_errors();
  pjdlog_exitx(EX_CONFIG, "SSL_use_certificate_file(%s) failed.",
      cert);
 }

 if (sandbox(user, 1, "proto_tls server") != 0)
  pjdlog_exitx(EX_CONFIG, "Unable to sandbox TLS server.");
 pjdlog_debug(1, "Privileges successfully dropped.");

 nonblock(sockfd);
 nonblock(tcpfd);

 if (SSL_set_fd(ssl, tcpfd) != 1)
  pjdlog_exitx(EX_TEMPFAIL, "SSL_set_fd() failed.");

 ret = SSL_accept(ssl);
 ssl_check_error(ssl, ret);

 tls_loop(sockfd, ssl);
}
