
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sp_ctx {int* sp_fd; int sp_magic; int sp_side; } ;


 int PJDLOG_ASSERT (int) ;
 int SP_CTX_MAGIC ;
 int SP_SIDE_CLIENT ;
 int SP_SIDE_SERVER ;
 int errno ;
 struct sp_ctx* malloc (int) ;

__attribute__((used)) static int
sp_wrap(int fd, bool client, void **ctxp)
{
 struct sp_ctx *spctx;

 PJDLOG_ASSERT(fd >= 0);

 spctx = malloc(sizeof(*spctx));
 if (spctx == ((void*)0))
  return (errno);

 if (client) {
  spctx->sp_side = SP_SIDE_CLIENT;
  spctx->sp_fd[0] = fd;
  spctx->sp_fd[1] = -1;
 } else {
  spctx->sp_side = SP_SIDE_SERVER;
  spctx->sp_fd[0] = -1;
  spctx->sp_fd[1] = fd;
 }
 spctx->sp_magic = SP_CTX_MAGIC;
 *ctxp = spctx;

 return (0);
}
