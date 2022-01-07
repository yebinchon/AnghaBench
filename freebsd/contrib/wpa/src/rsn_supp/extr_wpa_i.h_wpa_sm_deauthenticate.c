
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct wpa_sm {TYPE_1__* ctx; } ;
struct TYPE_2__ {int ctx; int (* deauthenticate ) (int ,int ) ;} ;


 int WPA_ASSERT (int (*) (int ,int )) ;
 int stub1 (int ,int ) ;

__attribute__((used)) static inline void wpa_sm_deauthenticate(struct wpa_sm *sm, u16 reason_code)
{
 WPA_ASSERT(sm->ctx->deauthenticate);
 sm->ctx->deauthenticate(sm->ctx->ctx, reason_code);
}
