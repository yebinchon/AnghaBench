
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct proto_conn {int dummy; } ;
typedef int connected ;
typedef int SSL_CTX ;
typedef int SSL ;


 int EAGAIN ;
 int EINTR ;
 int ENOBUFS ;
 int EX_CONFIG ;
 int EX_TEMPFAIL ;
 int * SSL_CTX_new (int ) ;
 int SSL_CTX_set_options (int *,int) ;
 int SSL_OP_NO_SSLv2 ;
 int SSL_OP_NO_SSLv3 ;
 long SSL_connect (int *) ;
 int SSL_library_init () ;
 int SSL_load_error_strings () ;
 int * SSL_new (int *) ;
 int SSL_set_fd (int *,int) ;
 int TLS_client_method () ;
 int bcopy (char*,char*,int) ;
 int block (int) ;
 int errno ;
 int exit (int ) ;
 int nonblock (int) ;
 int pjdlog_debug (int,char*) ;
 int pjdlog_debug_set (int) ;
 int pjdlog_exit (int ,char*) ;
 int pjdlog_exitx (int ,char*) ;
 int pjdlog_prefix_set (char*) ;
 int proto_connect (char*,char*,int,struct proto_conn**) ;
 int proto_descriptor (struct proto_conn*) ;
 int proto_set (char*,char const*) ;
 scalar_t__ sandbox (char const*,int,char*,char const*) ;
 int send (int,int*,int,int ) ;
 int setproctitle (char*) ;
 int ssl_check_error (int *,int) ;
 char* strdup (char const*) ;
 int tls_certificate_verify (int *,char const*) ;
 int tls_loop (int,int *) ;
 int wait_for_fd (int,int) ;

__attribute__((used)) static void
tls_exec_client(const char *user, int startfd, const char *srcaddr,
    const char *dstaddr, const char *fingerprint, const char *defport,
    int timeout, int debuglevel)
{
 struct proto_conn *tcp;
 char *saddr, *daddr;
 SSL_CTX *sslctx;
 SSL *ssl;
 long ret;
 int sockfd, tcpfd;
 uint8_t connected;

 pjdlog_debug_set(debuglevel);
 pjdlog_prefix_set("[TLS sandbox] (client) ");



 proto_set("tcp:port", defport);

 sockfd = startfd;


 if (srcaddr == ((void*)0)) {
  saddr = ((void*)0);
 } else {
  saddr = strdup(srcaddr);
  if (saddr == ((void*)0))
   pjdlog_exitx(EX_TEMPFAIL, "Unable to allocate memory.");
  bcopy("tcp://", saddr, 6);
 }
 daddr = strdup(dstaddr);
 if (daddr == ((void*)0))
  pjdlog_exitx(EX_TEMPFAIL, "Unable to allocate memory.");
 bcopy("tcp://", daddr, 6);


 if (proto_connect(saddr, daddr, timeout, &tcp) == -1)
  exit(EX_TEMPFAIL);

 SSL_load_error_strings();
 SSL_library_init();






 sslctx = SSL_CTX_new(TLS_client_method());
 if (sslctx == ((void*)0))
  pjdlog_exitx(EX_TEMPFAIL, "SSL_CTX_new() failed.");

 if (sandbox(user, 1, "proto_tls client: %s", dstaddr) != 0)
  pjdlog_exitx(EX_CONFIG, "Unable to sandbox TLS client.");
 pjdlog_debug(1, "Privileges successfully dropped.");

 SSL_CTX_set_options(sslctx, SSL_OP_NO_SSLv2 | SSL_OP_NO_SSLv3);





 ssl = SSL_new(sslctx);
 if (ssl == ((void*)0))
  pjdlog_exitx(EX_TEMPFAIL, "SSL_new() failed.");

 tcpfd = proto_descriptor(tcp);

 block(tcpfd);

 if (SSL_set_fd(ssl, tcpfd) != 1)
  pjdlog_exitx(EX_TEMPFAIL, "SSL_set_fd() failed.");

 ret = SSL_connect(ssl);
 ssl_check_error(ssl, (int)ret);

 nonblock(sockfd);
 nonblock(tcpfd);

 tls_certificate_verify(ssl, fingerprint);




 connected = 1;
 for (;;) {
  switch (send(sockfd, &connected, sizeof(connected), 0)) {
  case -1:
   if (errno == EINTR || errno == ENOBUFS)
    continue;
   if (errno == EAGAIN) {
    (void)wait_for_fd(sockfd, -1);
    continue;
   }
   pjdlog_exit(EX_TEMPFAIL, "send() failed");
  case 0:
   pjdlog_debug(1, "Connection terminated.");
   exit(0);
  case 1:
   break;
  }
  break;
 }

 tls_loop(sockfd, ssl);
}
