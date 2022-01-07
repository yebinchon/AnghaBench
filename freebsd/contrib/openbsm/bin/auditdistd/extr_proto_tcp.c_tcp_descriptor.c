
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcp_ctx {scalar_t__ tc_magic; int tc_fd; } ;


 int PJDLOG_ASSERT (int) ;
 scalar_t__ TCP_CTX_MAGIC ;

__attribute__((used)) static int
tcp_descriptor(const void *ctx)
{
 const struct tcp_ctx *tctx = ctx;

 PJDLOG_ASSERT(tctx != ((void*)0));
 PJDLOG_ASSERT(tctx->tc_magic == TCP_CTX_MAGIC);

 return (tctx->tc_fd);
}
