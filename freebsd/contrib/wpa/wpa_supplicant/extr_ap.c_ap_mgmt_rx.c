
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wpa_supplicant {TYPE_1__* ap_iface; } ;
struct rx_mgmt {int frame_len; int frame; int ssi_signal; int datarate; } ;
struct hostapd_frame_info {int ssi_signal; int datarate; } ;
typedef int fi ;
struct TYPE_2__ {int * bss; } ;


 int ieee802_11_mgmt (int ,int ,int ,struct hostapd_frame_info*) ;
 int os_memset (struct hostapd_frame_info*,int ,int) ;

void ap_mgmt_rx(void *ctx, struct rx_mgmt *rx_mgmt)
{
}
