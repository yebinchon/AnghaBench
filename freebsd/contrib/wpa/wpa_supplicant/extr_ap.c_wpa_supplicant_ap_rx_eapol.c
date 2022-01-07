
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct wpa_supplicant {TYPE_1__* ap_iface; } ;
struct TYPE_2__ {int * bss; } ;


 int ieee802_1x_receive (int ,int const*,int const*,size_t) ;

void wpa_supplicant_ap_rx_eapol(struct wpa_supplicant *wpa_s,
    const u8 *src_addr, const u8 *buf, size_t len)
{
 ieee802_1x_receive(wpa_s->ap_iface->bss[0], src_addr, buf, len);
}
