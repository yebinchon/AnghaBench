
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct wpa_sm {TYPE_1__* ctx; } ;
struct TYPE_2__ {int (* send_ft_action ) (int ,int ,int const*,int const*,size_t) ;int ctx; } ;


 int stub1 (int ,int ,int const*,int const*,size_t) ;

__attribute__((used)) static inline int wpa_sm_send_ft_action(struct wpa_sm *sm, u8 action,
     const u8 *target_ap,
     const u8 *ies, size_t ies_len)
{
 if (sm->ctx->send_ft_action)
  return sm->ctx->send_ft_action(sm->ctx->ctx, action, target_ap,
            ies, ies_len);
 return -1;
}
