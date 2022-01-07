
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tls_ctx {scalar_t__ tls_magic; int tls_raddr; } ;


 int PJDLOG_ASSERT (int) ;
 scalar_t__ TLS_CTX_MAGIC ;
 scalar_t__ strcmp (int ,char const*) ;

__attribute__((used)) static bool
tcp_address_match(const void *ctx, const char *addr)
{
 const struct tls_ctx *tlsctx = ctx;

 PJDLOG_ASSERT(tlsctx != ((void*)0));
 PJDLOG_ASSERT(tlsctx->tls_magic == TLS_CTX_MAGIC);

 return (strcmp(tlsctx->tls_raddr, addr) == 0);
}
