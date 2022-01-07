
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tls_ctx {scalar_t__ tls_magic; scalar_t__ tls_side; int * tls_tcp; int * tls_sock; } ;


 int PJDLOG_ASSERT (int) ;
 scalar_t__ TLS_CTX_MAGIC ;
 int free (struct tls_ctx*) ;
 int proto_close (int *) ;

__attribute__((used)) static void
tls_close(void *ctx)
{
 struct tls_ctx *tlsctx = ctx;

 PJDLOG_ASSERT(tlsctx != ((void*)0));
 PJDLOG_ASSERT(tlsctx->tls_magic == TLS_CTX_MAGIC);

 if (tlsctx->tls_sock != ((void*)0)) {
  proto_close(tlsctx->tls_sock);
  tlsctx->tls_sock = ((void*)0);
 }
 if (tlsctx->tls_tcp != ((void*)0)) {
  proto_close(tlsctx->tls_tcp);
  tlsctx->tls_tcp = ((void*)0);
 }
 tlsctx->tls_side = 0;
 tlsctx->tls_magic = 0;
 free(tlsctx);
}
