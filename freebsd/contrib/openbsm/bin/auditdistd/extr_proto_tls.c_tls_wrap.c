
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tls_ctx {int tls_wait_called; int tls_magic; int tls_side; int * tls_tcp; struct proto_conn* tls_sock; } ;
struct proto_conn {int dummy; } ;


 int TLS_CTX_MAGIC ;
 int TLS_SIDE_CLIENT ;
 int TLS_SIDE_SERVER_WORK ;
 struct tls_ctx* calloc (int,int) ;
 int errno ;
 int free (struct tls_ctx*) ;
 int proto_wrap (char*,int,int,struct proto_conn**) ;

__attribute__((used)) static int
tls_wrap(int fd, bool client, void **ctxp)
{
 struct tls_ctx *tlsctx;
 struct proto_conn *sock;
 int error;

 tlsctx = calloc(1, sizeof(*tlsctx));
 if (tlsctx == ((void*)0))
  return (errno);

 if (proto_wrap("socketpair", client, fd, &sock) == -1) {
  error = errno;
  free(tlsctx);
  return (error);
 }

 tlsctx->tls_sock = sock;
 tlsctx->tls_tcp = ((void*)0);
 tlsctx->tls_wait_called = (client ? 0 : 1);
 tlsctx->tls_side = (client ? TLS_SIDE_CLIENT : TLS_SIDE_SERVER_WORK);
 tlsctx->tls_magic = TLS_CTX_MAGIC;
 *ctxp = tlsctx;

 return (0);
}
