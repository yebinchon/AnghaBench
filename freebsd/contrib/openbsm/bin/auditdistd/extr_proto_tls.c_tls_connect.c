
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tls_ctx {int tls_wait_called; int tls_magic; int tls_side; int * tls_tcp; struct proto_conn* tls_sock; } ;
struct proto_conn {int dummy; } ;
typedef int pid_t ;


 int PJDLOG_ASSERT (int) ;
 int RFFDG ;
 int RFPROC ;
 int RFTSIGFLAGS (int ) ;
 int RFTSIGZMB ;
 int SIGKILL ;
 int TLS_CTX_MAGIC ;
 int TLS_SIDE_CLIENT ;
 struct tls_ctx* calloc (int,int) ;
 int errno ;
 int fork () ;
 int kill (int,int ) ;
 int pjdlog_prefix_set (char*) ;
 int proto_close (struct proto_conn*) ;
 int proto_connect (int *,char*,int,struct proto_conn**) ;
 int proto_send (struct proto_conn*,int *,int ) ;
 int rfork (int) ;
 int setproctitle (char*) ;
 scalar_t__ strncmp (char const*,char*,int) ;
 int tls_call_exec_client (struct proto_conn*,char const*,char const*,int) ;
 int tls_close (struct tls_ctx*) ;
 int tls_connect_wait (struct tls_ctx*,int) ;

__attribute__((used)) static int
tls_connect(const char *srcaddr, const char *dstaddr, int timeout, void **ctxp)
{
 struct tls_ctx *tlsctx;
 struct proto_conn *sock;
 pid_t pid;
 int error;

 PJDLOG_ASSERT(srcaddr == ((void*)0) || srcaddr[0] != '\0');
 PJDLOG_ASSERT(dstaddr != ((void*)0));
 PJDLOG_ASSERT(timeout >= -1);
 PJDLOG_ASSERT(ctxp != ((void*)0));

 if (strncmp(dstaddr, "tls://", 6) != 0)
  return (-1);
 if (srcaddr != ((void*)0) && strncmp(srcaddr, "tls://", 6) != 0)
  return (-1);

 if (proto_connect(((void*)0), "socketpair://", -1, &sock) == -1)
  return (errno);
 pid = fork();

 switch (pid) {
 case -1:

  error = errno;
  proto_close(sock);
  return (error);
 case 0:

  pjdlog_prefix_set("[TLS sandbox] (client) ");



  tls_call_exec_client(sock, srcaddr, dstaddr, timeout);

 default:

  tlsctx = calloc(1, sizeof(*tlsctx));
  if (tlsctx == ((void*)0)) {
   error = errno;
   proto_close(sock);
   (void)kill(pid, SIGKILL);
   return (error);
  }
  proto_send(sock, ((void*)0), 0);
  tlsctx->tls_sock = sock;
  tlsctx->tls_tcp = ((void*)0);
  tlsctx->tls_side = TLS_SIDE_CLIENT;
  tlsctx->tls_wait_called = 0;
  tlsctx->tls_magic = TLS_CTX_MAGIC;
  if (timeout >= 0) {
   error = tls_connect_wait(tlsctx, timeout);
   if (error != 0) {
    (void)kill(pid, SIGKILL);
    tls_close(tlsctx);
    return (error);
   }
  }
  *ctxp = tlsctx;
  return (0);
 }
}
