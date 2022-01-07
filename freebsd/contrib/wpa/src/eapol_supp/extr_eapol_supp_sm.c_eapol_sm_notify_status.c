
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct eapol_sm {TYPE_1__* ctx; } ;
struct TYPE_2__ {int ctx; int (* status_cb ) (int ,char const*,char const*) ;} ;


 int stub1 (int ,char const*,char const*) ;

__attribute__((used)) static void eapol_sm_notify_status(void *ctx, const char *status,
       const char *parameter)
{
 struct eapol_sm *sm = ctx;

 if (sm->ctx->status_cb)
  sm->ctx->status_cb(sm->ctx->ctx, status, parameter);
}
