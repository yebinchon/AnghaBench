
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sp_ctx {scalar_t__ sp_magic; int sp_side; int* sp_fd; } ;


 int PJDLOG_ABORT (char*,int) ;
 int PJDLOG_ASSERT (int) ;
 scalar_t__ SP_CTX_MAGIC ;



 int close (int) ;
 int proto_common_recv (int,unsigned char*,size_t,int*) ;

__attribute__((used)) static int
sp_recv(void *ctx, unsigned char *data, size_t size, int *fdp)
{
 struct sp_ctx *spctx = ctx;
 int sock;

 PJDLOG_ASSERT(spctx != ((void*)0));
 PJDLOG_ASSERT(spctx->sp_magic == SP_CTX_MAGIC);

 switch (spctx->sp_side) {
 case 128:





  spctx->sp_side = 129;

  close(spctx->sp_fd[0]);
  spctx->sp_fd[0] = -1;
 case 129:
  PJDLOG_ASSERT(spctx->sp_fd[1] >= 0);
  sock = spctx->sp_fd[1];
  break;
 case 130:
  PJDLOG_ASSERT(spctx->sp_fd[0] >= 0);
  sock = spctx->sp_fd[0];
  break;
 default:
  PJDLOG_ABORT("Invalid socket side (%d).", spctx->sp_side);
 }


 if (data == ((void*)0))
  return (0);

 return (proto_common_recv(sock, data, size, fdp));
}
