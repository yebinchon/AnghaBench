
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sp_ctx {scalar_t__ sp_magic; int sp_side; int* sp_fd; } ;


 int PJDLOG_ABORT (char*,int) ;
 int PJDLOG_ASSERT (int) ;
 scalar_t__ SP_CTX_MAGIC ;



 int close (int) ;
 int free (struct sp_ctx*) ;

__attribute__((used)) static void
sp_close(void *ctx)
{
 struct sp_ctx *spctx = ctx;

 PJDLOG_ASSERT(spctx != ((void*)0));
 PJDLOG_ASSERT(spctx->sp_magic == SP_CTX_MAGIC);

 switch (spctx->sp_side) {
 case 128:
  PJDLOG_ASSERT(spctx->sp_fd[0] >= 0);
  close(spctx->sp_fd[0]);
  spctx->sp_fd[0] = -1;
  PJDLOG_ASSERT(spctx->sp_fd[1] >= 0);
  close(spctx->sp_fd[1]);
  spctx->sp_fd[1] = -1;
  break;
 case 130:
  PJDLOG_ASSERT(spctx->sp_fd[0] >= 0);
  close(spctx->sp_fd[0]);
  spctx->sp_fd[0] = -1;
  PJDLOG_ASSERT(spctx->sp_fd[1] == -1);
  break;
 case 129:
  PJDLOG_ASSERT(spctx->sp_fd[1] >= 0);
  close(spctx->sp_fd[1]);
  spctx->sp_fd[1] = -1;
  PJDLOG_ASSERT(spctx->sp_fd[0] == -1);
  break;
 default:
  PJDLOG_ABORT("Invalid socket side (%d).", spctx->sp_side);
 }

 spctx->sp_magic = 0;
 free(spctx);
}
