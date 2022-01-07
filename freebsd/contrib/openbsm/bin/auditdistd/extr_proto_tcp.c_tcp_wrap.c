
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ss_family; } ;
struct tcp_ctx {int tc_fd; int tc_wait_called; int tc_magic; int tc_side; TYPE_1__ tc_sa; } ;


 int AF_UNSPEC ;
 int PJDLOG_ASSERT (int) ;
 int TCP_CTX_MAGIC ;
 int TCP_SIDE_CLIENT ;
 int TCP_SIDE_SERVER_WORK ;
 int errno ;
 struct tcp_ctx* malloc (int) ;

__attribute__((used)) static int
tcp_wrap(int fd, bool client, void **ctxp)
{
 struct tcp_ctx *tctx;

 PJDLOG_ASSERT(fd >= 0);
 PJDLOG_ASSERT(ctxp != ((void*)0));

 tctx = malloc(sizeof(*tctx));
 if (tctx == ((void*)0))
  return (errno);

 tctx->tc_fd = fd;
 tctx->tc_sa.ss_family = AF_UNSPEC;
 tctx->tc_wait_called = (client ? 0 : 1);
 tctx->tc_side = (client ? TCP_SIDE_CLIENT : TCP_SIDE_SERVER_WORK);
 tctx->tc_magic = TCP_CTX_MAGIC;
 *ctxp = tctx;

 return (0);
}
