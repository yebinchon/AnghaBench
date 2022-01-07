
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wpa_sm {TYPE_1__* ctx; } ;
typedef enum wpa_states { ____Placeholder_wpa_states } wpa_states ;
struct TYPE_2__ {int (* get_state ) (int ) ;int ctx; } ;


 int WPA_ASSERT (int (*) (int )) ;
 int stub1 (int ) ;

__attribute__((used)) static inline enum wpa_states wpa_sm_get_state(struct wpa_sm *sm)
{
 WPA_ASSERT(sm->ctx->get_state);
 return sm->ctx->get_state(sm->ctx->ctx);
}
