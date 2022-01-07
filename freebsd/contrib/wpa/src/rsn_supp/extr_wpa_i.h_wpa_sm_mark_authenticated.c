
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct wpa_sm {TYPE_1__* ctx; } ;
struct TYPE_2__ {int (* mark_authenticated ) (int ,int const*) ;int ctx; } ;


 int stub1 (int ,int const*) ;

__attribute__((used)) static inline int wpa_sm_mark_authenticated(struct wpa_sm *sm,
         const u8 *target_ap)
{
 if (sm->ctx->mark_authenticated)
  return sm->ctx->mark_authenticated(sm->ctx->ctx, target_ap);
 return -1;
}
