
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct wpa_sm {TYPE_1__* ctx; } ;
struct TYPE_2__ {int (* remove_pmkid ) (int ,void*,int const*,int const*,int const*) ;int ctx; } ;


 int WPA_ASSERT (int (*) (int ,void*,int const*,int const*,int const*)) ;
 int stub1 (int ,void*,int const*,int const*,int const*) ;

__attribute__((used)) static inline int wpa_sm_remove_pmkid(struct wpa_sm *sm, void *network_ctx,
          const u8 *bssid, const u8 *pmkid,
          const u8 *cache_id)
{
 WPA_ASSERT(sm->ctx->remove_pmkid);
 return sm->ctx->remove_pmkid(sm->ctx->ctx, network_ctx, bssid, pmkid,
         cache_id);
}
