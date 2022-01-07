
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sp_ctx {int sp_magic; int sp_side; int sp_fd; } ;


 int PF_UNIX ;
 int PJDLOG_ASSERT (int ) ;
 int SOCK_STREAM ;
 int SP_CTX_MAGIC ;
 int SP_SIDE_UNDEF ;
 int errno ;
 int free (struct sp_ctx*) ;
 struct sp_ctx* malloc (int) ;
 int socketpair (int ,int ,int ,int ) ;
 scalar_t__ strcmp (char const*,char*) ;

__attribute__((used)) static int
sp_client(const char *srcaddr, const char *dstaddr, void **ctxp)
{
 struct sp_ctx *spctx;
 int ret;

 if (strcmp(dstaddr, "socketpair://") != 0)
  return (-1);

 PJDLOG_ASSERT(srcaddr == ((void*)0));

 spctx = malloc(sizeof(*spctx));
 if (spctx == ((void*)0))
  return (errno);

 if (socketpair(PF_UNIX, SOCK_STREAM, 0, spctx->sp_fd) == -1) {
  ret = errno;
  free(spctx);
  return (ret);
 }

 spctx->sp_side = SP_SIDE_UNDEF;
 spctx->sp_magic = SP_CTX_MAGIC;
 *ctxp = spctx;

 return (0);
}
