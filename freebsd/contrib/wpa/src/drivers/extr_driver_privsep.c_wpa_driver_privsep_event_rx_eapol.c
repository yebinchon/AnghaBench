
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 size_t ETH_ALEN ;
 int drv_event_eapol_rx (void*,int *,int *,size_t) ;

__attribute__((used)) static void wpa_driver_privsep_event_rx_eapol(void *ctx, u8 *buf, size_t len)
{
 if (len < ETH_ALEN)
  return;
 drv_event_eapol_rx(ctx, buf, buf + ETH_ALEN, len - ETH_ALEN);
}
