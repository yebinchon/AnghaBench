
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct wpa_sm {TYPE_1__* ctx; } ;
struct TYPE_2__ {int (* ether_send ) (int ,int const*,int ,int const*,size_t) ;int ctx; } ;


 int WPA_ASSERT (int (*) (int ,int const*,int ,int const*,size_t)) ;
 int stub1 (int ,int const*,int ,int const*,size_t) ;

__attribute__((used)) static inline int wpa_sm_ether_send(struct wpa_sm *sm, const u8 *dest,
        u16 proto, const u8 *buf, size_t len)
{
 WPA_ASSERT(sm->ctx->ether_send);
 return sm->ctx->ether_send(sm->ctx->ctx, dest, proto, buf, len);
}
