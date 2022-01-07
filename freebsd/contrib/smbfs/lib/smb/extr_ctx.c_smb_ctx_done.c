
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ ioc_local; scalar_t__ ioc_server; } ;
struct smb_ctx {scalar_t__ ct_nb; scalar_t__ ct_srvaddr; TYPE_1__ ct_ssn; } ;


 int free (scalar_t__) ;
 int nb_ctx_done (scalar_t__) ;
 int nb_snbfree (scalar_t__) ;

void
smb_ctx_done(struct smb_ctx *ctx)
{
 if (ctx->ct_ssn.ioc_server)
  nb_snbfree(ctx->ct_ssn.ioc_server);
 if (ctx->ct_ssn.ioc_local)
  nb_snbfree(ctx->ct_ssn.ioc_local);
 if (ctx->ct_srvaddr)
  free(ctx->ct_srvaddr);
 if (ctx->ct_nb)
  nb_ctx_done(ctx->ct_nb);
}
