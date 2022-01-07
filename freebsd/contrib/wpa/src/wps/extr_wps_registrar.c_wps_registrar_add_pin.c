
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int const u8 ;
struct TYPE_2__ {int sec; } ;
struct wps_uuid_pin {int wildcard_uuid; size_t pin_len; int list; TYPE_1__ expiration; int flags; int * pin; int uuid; int enrollee_addr; } ;
struct wps_registrar {int selected_registrar; scalar_t__ pbc; int pins; } ;


 int ETH_ALEN ;
 int MSG_DEBUG ;
 int PIN_EXPIRES ;
 int WPS_PBC_WALK_TIME ;
 int WPS_UUID_LEN ;
 int dl_list_add (int *,int *) ;
 int eloop_cancel_timeout (int ,struct wps_registrar*,int *) ;
 int eloop_register_timeout (int ,int ,int ,struct wps_registrar*,int *) ;
 int os_free (struct wps_uuid_pin*) ;
 int os_get_reltime (TYPE_1__*) ;
 int os_memcpy (int ,int const*,int ) ;
 int * os_memdup (int const*,size_t) ;
 struct wps_uuid_pin* os_zalloc (int) ;
 int wpa_hexdump (int ,char*,int const*,int ) ;
 int wpa_hexdump_ascii_key (int ,char*,int const*,size_t) ;
 int wpa_printf (int ,char*,int) ;
 int wps_registrar_add_authorized_mac (struct wps_registrar*,int const*) ;
 int wps_registrar_invalidate_unused (struct wps_registrar*) ;
 int wps_registrar_selected_registrar_changed (struct wps_registrar*,int ) ;
 int wps_registrar_set_selected_timeout ;

int wps_registrar_add_pin(struct wps_registrar *reg, const u8 *addr,
     const u8 *uuid, const u8 *pin, size_t pin_len,
     int timeout)
{
 struct wps_uuid_pin *p;

 p = os_zalloc(sizeof(*p));
 if (p == ((void*)0))
  return -1;
 if (addr)
  os_memcpy(p->enrollee_addr, addr, ETH_ALEN);
 if (uuid == ((void*)0))
  p->wildcard_uuid = 1;
 else
  os_memcpy(p->uuid, uuid, WPS_UUID_LEN);
 p->pin = os_memdup(pin, pin_len);
 if (p->pin == ((void*)0)) {
  os_free(p);
  return -1;
 }
 p->pin_len = pin_len;

 if (timeout) {
  p->flags |= PIN_EXPIRES;
  os_get_reltime(&p->expiration);
  p->expiration.sec += timeout;
 }

 if (p->wildcard_uuid)
  wps_registrar_invalidate_unused(reg);

 dl_list_add(&reg->pins, &p->list);

 wpa_printf(MSG_DEBUG, "WPS: A new PIN configured (timeout=%d)",
     timeout);
 wpa_hexdump(MSG_DEBUG, "WPS: UUID", uuid, WPS_UUID_LEN);
 wpa_hexdump_ascii_key(MSG_DEBUG, "WPS: PIN", pin, pin_len);
 reg->selected_registrar = 1;
 reg->pbc = 0;
 if (addr)
  wps_registrar_add_authorized_mac(reg, addr);
 else
  wps_registrar_add_authorized_mac(
   reg, (u8 *) "\xff\xff\xff\xff\xff\xff");
 wps_registrar_selected_registrar_changed(reg, 0);
 eloop_cancel_timeout(wps_registrar_set_selected_timeout, reg, ((void*)0));
 eloop_register_timeout(WPS_PBC_WALK_TIME, 0,
          wps_registrar_set_selected_timeout,
          reg, ((void*)0));

 return 0;
}
