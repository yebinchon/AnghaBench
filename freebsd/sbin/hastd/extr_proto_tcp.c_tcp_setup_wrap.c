
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ss_family; } ;
struct tcp_ctx {int tc_fd; int tc_side; int tc_magic; TYPE_1__ tc_sa; } ;


 int AF_UNSPEC ;
 int PJDLOG_ASSERT (int) ;
 int TCP_CTX_MAGIC ;
 int TCP_SIDE_CLIENT ;
 int TCP_SIDE_SERVER_WORK ;
 int errno ;
 struct tcp_ctx* malloc (int) ;

__attribute__((used)) static int
tcp_setup_wrap(int fd, int side, void **ctxp)
{
 struct tcp_ctx *tctx;

 PJDLOG_ASSERT(fd >= 0);
 PJDLOG_ASSERT(side == TCP_SIDE_CLIENT ||
     side == TCP_SIDE_SERVER_WORK);
 PJDLOG_ASSERT(ctxp != ((void*)0));

 tctx = malloc(sizeof(*tctx));
 if (tctx == ((void*)0))
  return (errno);

 tctx->tc_fd = fd;
 tctx->tc_sa.ss_family = AF_UNSPEC;
 tctx->tc_side = side;
 tctx->tc_magic = TCP_CTX_MAGIC;
 *ctxp = tctx;

 return (0);
}
