
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wpa_supplicant {TYPE_1__* ap_iface; } ;
struct TYPE_2__ {int * bss; } ;


 int ap_for_each_sta (int ,int ,int*) ;
 int wpas_sta_check_ecsa ;

__attribute__((used)) static int wpas_p2p_go_clients_support_ecsa(struct wpa_supplicant *wpa_s)
{
 int ecsa_support = 1;

 ap_for_each_sta(wpa_s->ap_iface->bss[0], wpas_sta_check_ecsa,
   &ecsa_support);

 return ecsa_support;
}
