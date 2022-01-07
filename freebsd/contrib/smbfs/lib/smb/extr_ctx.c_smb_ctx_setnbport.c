
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct smb_ctx {TYPE_1__* ct_nb; } ;
struct TYPE_2__ {int nb_nmbtcpport; } ;


 int EINVAL ;

int
smb_ctx_setnbport(struct smb_ctx *ctx, int port)
{
 if (port < 1 || port > 0xffff)
  return EINVAL;
 ctx->ct_nb->nb_nmbtcpport = port;
 return 0;
}
