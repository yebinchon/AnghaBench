
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct wpa_supplicant {TYPE_1__* ap_iface; } ;
struct TYPE_2__ {int * bss; } ;


 int hostapd_tx_status (int ,int const*,int const*,size_t,int) ;

void ap_tx_status(void *ctx, const u8 *addr,
    const u8 *buf, size_t len, int ack)
{




}
