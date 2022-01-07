
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tls_ctx {scalar_t__ tls_magic; int tls_wait_called; int tls_side; char* tls_raddr; int * tls_tcp; int * tls_sock; } ;


 int PJDLOG_ABORT (char*,int) ;
 int PJDLOG_ASSERT (int) ;
 int PJDLOG_VERIFY (int) ;
 scalar_t__ TLS_CTX_MAGIC ;



 int bcopy (char*,char*,int) ;
 int proto_remote_address (int *,char*,size_t) ;
 size_t strlcpy (char*,char*,size_t) ;
 int strncmp (char*,char*,int) ;

__attribute__((used)) static void
tls_remote_address(const void *ctx, char *addr, size_t size)
{
 const struct tls_ctx *tlsctx = ctx;

 PJDLOG_ASSERT(tlsctx != ((void*)0));
 PJDLOG_ASSERT(tlsctx->tls_magic == TLS_CTX_MAGIC);
 PJDLOG_ASSERT(tlsctx->tls_wait_called);

 switch (tlsctx->tls_side) {
 case 130:
  PJDLOG_ASSERT(tlsctx->tls_sock != ((void*)0));

  PJDLOG_VERIFY(strlcpy(addr, "tls://N/A", size) < size);
  break;
 case 128:
  PJDLOG_ASSERT(tlsctx->tls_sock != ((void*)0));

  PJDLOG_VERIFY(strlcpy(addr, tlsctx->tls_raddr, size) < size);
  break;
 case 129:
  PJDLOG_ASSERT(tlsctx->tls_tcp != ((void*)0));

  proto_remote_address(tlsctx->tls_tcp, addr, size);
  PJDLOG_ASSERT(strncmp(addr, "tcp://", 6) == 0);

  bcopy("tls://", addr, 6);
  break;
 default:
  PJDLOG_ABORT("Invalid side (%d).", tlsctx->tls_side);
 }
}
