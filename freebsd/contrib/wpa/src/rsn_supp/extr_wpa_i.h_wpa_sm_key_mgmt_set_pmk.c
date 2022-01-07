
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct wpa_sm {TYPE_1__* ctx; } ;
struct TYPE_2__ {int (* key_mgmt_set_pmk ) (int ,int const*,size_t) ;int ctx; } ;


 int stub1 (int ,int const*,size_t) ;

__attribute__((used)) static inline int wpa_sm_key_mgmt_set_pmk(struct wpa_sm *sm,
       const u8 *pmk, size_t pmk_len)
{
 if (!sm->ctx->key_mgmt_set_pmk)
  return -1;
 return sm->ctx->key_mgmt_set_pmk(sm->ctx->ctx, pmk, pmk_len);
}
