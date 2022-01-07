
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wpa_sm {TYPE_1__* ctx; } ;
struct TYPE_2__ {void* (* get_network_ctx ) (int ) ;int ctx; } ;


 int WPA_ASSERT (void* (*) (int )) ;
 void* stub1 (int ) ;

__attribute__((used)) static inline void * wpa_sm_get_network_ctx(struct wpa_sm *sm)
{
 WPA_ASSERT(sm->ctx->get_network_ctx);
 return sm->ctx->get_network_ctx(sm->ctx->ctx);
}
