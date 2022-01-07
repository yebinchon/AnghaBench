
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tls_ctx {scalar_t__ tls_magic; int tls_side; int * tls_tcp; int * tls_sock; } ;


 int PJDLOG_ABORT (char*,int) ;
 int PJDLOG_ASSERT (int) ;
 scalar_t__ TLS_CTX_MAGIC ;



 int proto_descriptor (int *) ;

__attribute__((used)) static int
tls_descriptor(const void *ctx)
{
 const struct tls_ctx *tlsctx = ctx;

 PJDLOG_ASSERT(tlsctx != ((void*)0));
 PJDLOG_ASSERT(tlsctx->tls_magic == TLS_CTX_MAGIC);

 switch (tlsctx->tls_side) {
 case 130:
 case 128:
  PJDLOG_ASSERT(tlsctx->tls_sock != ((void*)0));

  return (proto_descriptor(tlsctx->tls_sock));
 case 129:
  PJDLOG_ASSERT(tlsctx->tls_tcp != ((void*)0));

  return (proto_descriptor(tlsctx->tls_tcp));
 default:
  PJDLOG_ABORT("Invalid side (%d).", tlsctx->tls_side);
 }
}
