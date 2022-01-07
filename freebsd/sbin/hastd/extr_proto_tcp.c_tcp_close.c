
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcp_ctx {scalar_t__ tc_magic; scalar_t__ tc_fd; } ;


 int PJDLOG_ASSERT (int) ;
 scalar_t__ TCP_CTX_MAGIC ;
 int close (scalar_t__) ;
 int free (struct tcp_ctx*) ;

__attribute__((used)) static void
tcp_close(void *ctx)
{
 struct tcp_ctx *tctx = ctx;

 PJDLOG_ASSERT(tctx != ((void*)0));
 PJDLOG_ASSERT(tctx->tc_magic == TCP_CTX_MAGIC);

 if (tctx->tc_fd >= 0)
  close(tctx->tc_fd);
 tctx->tc_magic = 0;
 free(tctx);
}
