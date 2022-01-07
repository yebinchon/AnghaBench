
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct eth_p_oui_ctx {int oui_suffix; int rx_callback_ctx; int (* rx_callback ) (int ,int const*,int const*,int ,int const*,size_t) ;} ;


 int stub1 (int ,int const*,int const*,int ,int const*,size_t) ;

void eth_p_oui_deliver(struct eth_p_oui_ctx *ctx, const u8 *src_addr,
         const u8 *dst_addr, const u8 *buf, size_t len)
{
 ctx->rx_callback(ctx->rx_callback_ctx, src_addr, dst_addr,
    ctx->oui_suffix, buf, len);
}
