
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wpa_sm {TYPE_1__* ctx; } ;
struct TYPE_2__ {int ctx; int (* cancel_auth_timeout ) (int ) ;} ;


 int WPA_ASSERT (int (*) (int )) ;
 int stub1 (int ) ;

__attribute__((used)) static inline void wpa_sm_cancel_auth_timeout(struct wpa_sm *sm)
{
 WPA_ASSERT(sm->ctx->cancel_auth_timeout);
 sm->ctx->cancel_auth_timeout(sm->ctx->ctx);
}
