
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct wps_context {int uuid; } ;
struct wpa_supplicant {TYPE_2__* conf; int own_addr; struct wps_context* wps; TYPE_1__* global; struct wpa_supplicant* next; } ;
typedef int buf ;
struct TYPE_4__ {int auto_uuid; int uuid; } ;
struct TYPE_3__ {struct wpa_supplicant* ifaces; } ;


 int MSG_DEBUG ;
 int WPS_UUID_LEN ;
 scalar_t__ is_nil_uuid (int ) ;
 int os_memcpy (int ,int ,int ) ;
 int uuid_bin2str (int ,char*,int) ;
 int uuid_gen_mac_addr (int ,int ) ;
 int uuid_random (int ) ;
 int wpa_dbg (struct wpa_supplicant*,int ,char*,char const*,char*) ;

__attribute__((used)) static void wpas_wps_set_uuid(struct wpa_supplicant *wpa_s,
         struct wps_context *wps)
{
 char buf[50];
 const char *src;

 if (is_nil_uuid(wpa_s->conf->uuid)) {
  struct wpa_supplicant *first;
  first = wpa_s->global->ifaces;
  while (first && first->next)
   first = first->next;
  if (first && first != wpa_s) {
   if (wps != wpa_s->global->ifaces->wps)
    os_memcpy(wps->uuid,
       wpa_s->global->ifaces->wps->uuid,
       WPS_UUID_LEN);
   src = "from the first interface";
  } else if (wpa_s->conf->auto_uuid == 1) {
   uuid_random(wps->uuid);
   src = "based on random data";
  } else {
   uuid_gen_mac_addr(wpa_s->own_addr, wps->uuid);
   src = "based on MAC address";
  }
 } else {
  os_memcpy(wps->uuid, wpa_s->conf->uuid, WPS_UUID_LEN);
  src = "based on configuration";
 }

 uuid_bin2str(wps->uuid, buf, sizeof(buf));
 wpa_dbg(wpa_s, MSG_DEBUG, "WPS: UUID %s: %s", src, buf);
}
