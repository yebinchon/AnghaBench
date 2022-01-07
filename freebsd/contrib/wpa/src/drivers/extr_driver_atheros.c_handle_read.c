
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct l2_ethhdr {int dummy; } ;
struct atheros_driver_data {int hapd; } ;


 int drv_event_eapol_rx (int ,int const*,int const*,size_t) ;

__attribute__((used)) static void
handle_read(void *ctx, const u8 *src_addr, const u8 *buf, size_t len)
{
 struct atheros_driver_data *drv = ctx;
 drv_event_eapol_rx(drv->hapd, src_addr, buf + sizeof(struct l2_ethhdr),
      len - sizeof(struct l2_ethhdr));
}
