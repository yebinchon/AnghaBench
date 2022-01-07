
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wpa_sm {TYPE_1__* ctx; } ;
typedef enum wpa_states { ____Placeholder_wpa_states } wpa_states ;
struct TYPE_2__ {int ctx; int (* set_state ) (int ,int) ;} ;


 int WPA_ASSERT (int (*) (int ,int)) ;
 int stub1 (int ,int) ;

__attribute__((used)) static inline void wpa_sm_set_state(struct wpa_sm *sm, enum wpa_states state)
{
 WPA_ASSERT(sm->ctx->set_state);
 sm->ctx->set_state(sm->ctx->ctx, state);
}
