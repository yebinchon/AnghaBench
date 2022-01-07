
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct wpa_sm {TYPE_1__* ctx; } ;
struct TYPE_2__ {int ctx; int (* fils_hlp_rx ) (int ,int const*,int const*,int const*,size_t) ;} ;


 int stub1 (int ,int const*,int const*,int const*,size_t) ;

__attribute__((used)) static inline void wpa_sm_fils_hlp_rx(struct wpa_sm *sm,
          const u8 *dst, const u8 *src,
          const u8 *pkt, size_t pkt_len)
{
 if (sm->ctx->fils_hlp_rx)
  sm->ctx->fils_hlp_rx(sm->ctx->ctx, dst, src, pkt, pkt_len);
}
