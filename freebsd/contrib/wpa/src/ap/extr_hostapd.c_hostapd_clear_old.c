
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct hostapd_iface {size_t num_bss; TYPE_1__** bss; } ;
struct TYPE_3__ {int radius; } ;


 int WLAN_REASON_PREV_AUTH_NOT_VALID ;
 int hostapd_broadcast_wep_clear (TYPE_1__*) ;
 int hostapd_flush_old_stations (TYPE_1__*,int ) ;
 int radius_client_flush (int ,int ) ;

__attribute__((used)) static void hostapd_clear_old(struct hostapd_iface *iface)
{
 size_t j;





 for (j = 0; j < iface->num_bss; j++) {
  hostapd_flush_old_stations(iface->bss[j],
        WLAN_REASON_PREV_AUTH_NOT_VALID);
  hostapd_broadcast_wep_clear(iface->bss[j]);




  radius_client_flush(iface->bss[j]->radius, 0);

 }
}
