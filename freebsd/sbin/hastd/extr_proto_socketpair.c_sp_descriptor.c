
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sp_ctx {scalar_t__ sp_magic; int sp_side; int* sp_fd; } ;


 int PJDLOG_ABORT (char*,int) ;
 int PJDLOG_ASSERT (int) ;
 scalar_t__ SP_CTX_MAGIC ;



__attribute__((used)) static int
sp_descriptor(const void *ctx)
{
 const struct sp_ctx *spctx = ctx;

 PJDLOG_ASSERT(spctx != ((void*)0));
 PJDLOG_ASSERT(spctx->sp_magic == SP_CTX_MAGIC);
 PJDLOG_ASSERT(spctx->sp_side == 129 ||
     spctx->sp_side == 128);

 switch (spctx->sp_side) {
 case 129:
  PJDLOG_ASSERT(spctx->sp_fd[0] >= 0);
  return (spctx->sp_fd[0]);
 case 128:
  PJDLOG_ASSERT(spctx->sp_fd[1] >= 0);
  return (spctx->sp_fd[1]);
 }

 PJDLOG_ABORT("Invalid socket side (%d).", spctx->sp_side);
}
