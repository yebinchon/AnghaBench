
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nb_ctx {int * nb_scope; } ;


 int ENAMETOOLONG ;
 int ENOMEM ;
 int free (int *) ;
 int * malloc (size_t) ;
 int nls_str_upper (int *,char const*) ;
 int smb_error (char*,int ,char const*) ;
 size_t strlen (char const*) ;

int
nb_ctx_setscope(struct nb_ctx *ctx, const char *scope)
{
 size_t slen = strlen(scope);

 if (slen >= 128) {
  smb_error("scope '%s' is too long", 0, scope);
  return ENAMETOOLONG;
 }
 if (ctx->nb_scope)
  free(ctx->nb_scope);
 ctx->nb_scope = malloc(slen + 1);
 if (ctx->nb_scope == ((void*)0))
  return ENOMEM;
 nls_str_upper(ctx->nb_scope, scope);
 return 0;
}
