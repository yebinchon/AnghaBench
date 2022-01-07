
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nb_ctx {int * nb_nsname; } ;


 int EINVAL ;
 int ENOMEM ;
 int free (int *) ;
 int * strdup (char const*) ;

int
nb_ctx_setns(struct nb_ctx *ctx, const char *addr)
{
 if (addr == ((void*)0) || addr[0] == 0)
  return EINVAL;
 if (ctx->nb_nsname)
  free(ctx->nb_nsname);
 if ((ctx->nb_nsname = strdup(addr)) == ((void*)0))
  return ENOMEM;
 return 0;
}
