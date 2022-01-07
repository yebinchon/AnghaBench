
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wps_registrar {int selected_registrar; int pbc; int wps; int p2p_dev_addr; scalar_t__ force_pbc_overlap; } ;


 int ETH_ALEN ;
 int MSG_DEBUG ;
 int WPS_PBC_WALK_TIME ;
 int eloop_cancel_timeout (int ,struct wps_registrar*,int *) ;
 int eloop_register_timeout (int ,int ,int ,struct wps_registrar*,int *) ;
 int os_memcpy (int ,int const*,int ) ;
 int os_memset (int ,int ,int ) ;
 int wpa_printf (int ,char*) ;
 int wps_pbc_active_event (int ) ;
 int wps_pbc_overlap_event (int ) ;
 int wps_registrar_add_authorized_mac (struct wps_registrar*,int *) ;
 scalar_t__ wps_registrar_pbc_overlap (struct wps_registrar*,int *,int *) ;
 int wps_registrar_pbc_timeout ;
 int wps_registrar_selected_registrar_changed (struct wps_registrar*,int ) ;
 int wps_registrar_set_selected_timeout ;

int wps_registrar_button_pushed(struct wps_registrar *reg,
    const u8 *p2p_dev_addr)
{
 if (p2p_dev_addr == ((void*)0) &&
     wps_registrar_pbc_overlap(reg, ((void*)0), ((void*)0))) {
  wpa_printf(MSG_DEBUG, "WPS: PBC overlap - do not start PBC "
      "mode");
  wps_pbc_overlap_event(reg->wps);
  return -2;
 }
 wpa_printf(MSG_DEBUG, "WPS: Button pushed - PBC mode started");
 reg->force_pbc_overlap = 0;
 reg->selected_registrar = 1;
 reg->pbc = 1;
 if (p2p_dev_addr)
  os_memcpy(reg->p2p_dev_addr, p2p_dev_addr, ETH_ALEN);
 else
  os_memset(reg->p2p_dev_addr, 0, ETH_ALEN);
 wps_registrar_add_authorized_mac(reg,
      (u8 *) "\xff\xff\xff\xff\xff\xff");
 wps_registrar_selected_registrar_changed(reg, 0);

 wps_pbc_active_event(reg->wps);
 eloop_cancel_timeout(wps_registrar_set_selected_timeout, reg, ((void*)0));
 eloop_cancel_timeout(wps_registrar_pbc_timeout, reg, ((void*)0));
 eloop_register_timeout(WPS_PBC_WALK_TIME, 0, wps_registrar_pbc_timeout,
          reg, ((void*)0));
 return 0;
}
