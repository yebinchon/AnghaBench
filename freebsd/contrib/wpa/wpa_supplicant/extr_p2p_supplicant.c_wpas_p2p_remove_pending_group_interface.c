
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wpa_supplicant {char* pending_interface_name; TYPE_1__* global; int pending_interface_addr; int pending_interface_type; } ;
struct TYPE_2__ {scalar_t__ pending_group_iface_for_p2ps; } ;


 int ETH_ALEN ;
 int MSG_DEBUG ;
 scalar_t__ is_zero_ether_addr (int ) ;
 int os_memset (int ,int ,int ) ;
 int wpa_drv_if_remove (struct wpa_supplicant*,int ,char*) ;
 int wpa_printf (int ,char*,char*) ;

__attribute__((used)) static void wpas_p2p_remove_pending_group_interface(
 struct wpa_supplicant *wpa_s)
{
 if (!wpa_s->pending_interface_name[0] ||
     is_zero_ether_addr(wpa_s->pending_interface_addr))
  return;

 wpa_printf(MSG_DEBUG, "P2P: Removing pending group interface %s",
     wpa_s->pending_interface_name);
 wpa_drv_if_remove(wpa_s, wpa_s->pending_interface_type,
     wpa_s->pending_interface_name);
 os_memset(wpa_s->pending_interface_addr, 0, ETH_ALEN);
 wpa_s->pending_interface_name[0] = '\0';
 wpa_s->global->pending_group_iface_for_p2ps = 0;
}
