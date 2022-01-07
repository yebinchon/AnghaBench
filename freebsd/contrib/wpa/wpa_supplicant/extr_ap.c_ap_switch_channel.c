
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wpa_supplicant {TYPE_1__* ap_iface; } ;
struct csa_settings {int dummy; } ;
struct TYPE_2__ {int * bss; } ;


 int hostapd_switch_channel (int ,struct csa_settings*) ;

int ap_switch_channel(struct wpa_supplicant *wpa_s,
        struct csa_settings *settings)
{






 return -1;

}
