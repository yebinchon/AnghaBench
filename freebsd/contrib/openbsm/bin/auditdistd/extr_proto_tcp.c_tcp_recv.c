
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcp_ctx {scalar_t__ tc_magic; scalar_t__ tc_side; int tc_wait_called; scalar_t__ tc_fd; } ;


 int PJDLOG_ASSERT (int) ;
 scalar_t__ TCP_CTX_MAGIC ;
 scalar_t__ TCP_SIDE_CLIENT ;
 scalar_t__ TCP_SIDE_SERVER_WORK ;
 int proto_common_recv (scalar_t__,unsigned char*,size_t,int *) ;

__attribute__((used)) static int
tcp_recv(void *ctx, unsigned char *data, size_t size, int *fdp)
{
 struct tcp_ctx *tctx = ctx;

 PJDLOG_ASSERT(tctx != ((void*)0));
 PJDLOG_ASSERT(tctx->tc_magic == TCP_CTX_MAGIC);
 PJDLOG_ASSERT(tctx->tc_side == TCP_SIDE_CLIENT ||
     tctx->tc_side == TCP_SIDE_SERVER_WORK);
 PJDLOG_ASSERT(tctx->tc_wait_called);
 PJDLOG_ASSERT(tctx->tc_fd >= 0);
 PJDLOG_ASSERT(fdp == ((void*)0));

 return (proto_common_recv(tctx->tc_fd, data, size, ((void*)0)));
}
