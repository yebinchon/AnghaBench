
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nb_ctx {int nb_smbtcpport; int nb_nmbtcpport; } ;


 int ENOMEM ;
 int NMB_TCP_PORT ;
 int SMB_TCP_PORT ;
 int bzero (struct nb_ctx*,int) ;
 struct nb_ctx* malloc (int) ;

int
nb_ctx_create(struct nb_ctx **ctxpp)
{
 struct nb_ctx *ctx;

 ctx = malloc(sizeof(struct nb_ctx));
 if (ctx == ((void*)0))
  return ENOMEM;
 bzero(ctx, sizeof(struct nb_ctx));
 ctx->nb_nmbtcpport = NMB_TCP_PORT;
 ctx->nb_smbtcpport = SMB_TCP_PORT;

 *ctxpp = ctx;
 return 0;
}
