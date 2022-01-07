
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eth_p_oui_iface {int l2; int list; int receiver; struct eth_p_oui_iface* iface; } ;
struct eth_p_oui_ctx {int l2; int list; int receiver; struct eth_p_oui_ctx* iface; } ;


 int dl_list_del (int *) ;
 scalar_t__ dl_list_empty (int *) ;
 int l2_packet_deinit (int ) ;
 int os_free (struct eth_p_oui_iface*) ;

void eth_p_oui_unregister(struct eth_p_oui_ctx *ctx)
{
 struct eth_p_oui_iface *iface;

 if (!ctx)
  return;

 iface = ctx->iface;

 dl_list_del(&ctx->list);
 os_free(ctx);

 if (dl_list_empty(&iface->receiver)) {
  dl_list_del(&iface->list);
  l2_packet_deinit(iface->l2);
  os_free(iface);
 }
}
