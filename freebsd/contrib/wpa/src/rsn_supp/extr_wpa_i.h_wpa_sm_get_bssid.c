
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct wpa_sm {TYPE_1__* ctx; } ;
struct TYPE_2__ {int (* get_bssid ) (int ,int *) ;int ctx; } ;


 int WPA_ASSERT (int (*) (int ,int *)) ;
 int stub1 (int ,int *) ;

__attribute__((used)) static inline int wpa_sm_get_bssid(struct wpa_sm *sm, u8 *bssid)
{
 WPA_ASSERT(sm->ctx->get_bssid);
 return sm->ctx->get_bssid(sm->ctx->ctx, bssid);
}
