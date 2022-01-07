
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tls_ctx {scalar_t__ tls_magic; scalar_t__ tls_side; int tls_wait_called; int * tls_sock; } ;


 int PJDLOG_ASSERT (int) ;
 scalar_t__ TLS_CTX_MAGIC ;
 scalar_t__ TLS_SIDE_CLIENT ;
 scalar_t__ TLS_SIDE_SERVER_WORK ;
 int errno ;
 int proto_send (int *,unsigned char const*,size_t) ;

__attribute__((used)) static int
tls_send(void *ctx, const unsigned char *data, size_t size, int fd)
{
 struct tls_ctx *tlsctx = ctx;

 PJDLOG_ASSERT(tlsctx != ((void*)0));
 PJDLOG_ASSERT(tlsctx->tls_magic == TLS_CTX_MAGIC);
 PJDLOG_ASSERT(tlsctx->tls_side == TLS_SIDE_CLIENT ||
     tlsctx->tls_side == TLS_SIDE_SERVER_WORK);
 PJDLOG_ASSERT(tlsctx->tls_sock != ((void*)0));
 PJDLOG_ASSERT(tlsctx->tls_wait_called);
 PJDLOG_ASSERT(fd == -1);

 if (proto_send(tlsctx->tls_sock, data, size) == -1)
  return (errno);

 return (0);
}
