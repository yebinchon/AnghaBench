
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct wpa_sm {TYPE_1__* ctx; } ;
struct TYPE_2__ {int (* update_ft_ies ) (int ,int const*,int const*,size_t) ;int ctx; } ;


 int stub1 (int ,int const*,int const*,size_t) ;

__attribute__((used)) static inline int wpa_sm_update_ft_ies(struct wpa_sm *sm, const u8 *md,
           const u8 *ies, size_t ies_len)
{
 if (sm->ctx->update_ft_ies)
  return sm->ctx->update_ft_ies(sm->ctx->ctx, md, ies, ies_len);
 return -1;
}
