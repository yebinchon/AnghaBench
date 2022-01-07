
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wpa_sm {TYPE_1__* ctx; } ;
struct TYPE_2__ {int (* get_beacon_ie ) (int ) ;int ctx; } ;


 int WPA_ASSERT (int (*) (int )) ;
 int stub1 (int ) ;

__attribute__((used)) static inline int wpa_sm_get_beacon_ie(struct wpa_sm *sm)
{
 WPA_ASSERT(sm->ctx->get_beacon_ie);
 return sm->ctx->get_beacon_ie(sm->ctx->ctx);
}
