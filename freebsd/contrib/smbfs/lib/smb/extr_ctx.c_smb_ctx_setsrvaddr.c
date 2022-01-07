
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smb_ctx {int * ct_srvaddr; } ;


 int EINVAL ;
 int ENOMEM ;
 int free (int *) ;
 int * strdup (char const*) ;

int
smb_ctx_setsrvaddr(struct smb_ctx *ctx, const char *addr)
{
 if (addr == ((void*)0) || addr[0] == 0)
  return EINVAL;
 if (ctx->ct_srvaddr)
  free(ctx->ct_srvaddr);
 if ((ctx->ct_srvaddr = strdup(addr)) == ((void*)0))
  return ENOMEM;
 return 0;
}
