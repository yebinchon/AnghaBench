
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tls_cert_data {int dummy; } ;
struct eapol_sm {TYPE_1__* ctx; } ;
struct TYPE_2__ {int ctx; int (* cert_cb ) (int ,struct tls_cert_data*,char const*) ;} ;


 int stub1 (int ,struct tls_cert_data*,char const*) ;

__attribute__((used)) static void eapol_sm_notify_cert(void *ctx, struct tls_cert_data *cert,
     const char *cert_hash)
{
 struct eapol_sm *sm = ctx;
 if (sm->ctx->cert_cb)
  sm->ctx->cert_cb(sm->ctx->ctx, cert, cert_hash);
}
