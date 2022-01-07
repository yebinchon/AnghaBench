
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct eapol_sm {scalar_t__ suppPortStatus; TYPE_1__* ctx; scalar_t__ force_authorized_update; } ;
struct TYPE_2__ {int ctx; int (* port_cb ) (int ,int) ;} ;


 scalar_t__ Authorized ;
 scalar_t__ FALSE ;
 int stub1 (int ,int) ;

__attribute__((used)) static void eapol_sm_set_port_authorized(struct eapol_sm *sm)
{
 int cb;

 cb = sm->suppPortStatus != Authorized || sm->force_authorized_update;
 sm->force_authorized_update = FALSE;
 sm->suppPortStatus = Authorized;
 if (cb && sm->ctx->port_cb)
  sm->ctx->port_cb(sm->ctx->ctx, 1);
}
