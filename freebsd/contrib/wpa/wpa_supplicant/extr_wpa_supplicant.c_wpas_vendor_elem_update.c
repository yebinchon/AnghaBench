
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wpa_supplicant {scalar_t__* vendor_elem; TYPE_1__* global; struct wpa_supplicant* parent; } ;
typedef int buf ;
struct TYPE_2__ {scalar_t__ p2p; int p2p_disabled; } ;


 int MSG_DEBUG ;
 unsigned int NUM_VENDOR_ELEM_FRAMES ;
 int os_snprintf (char*,int,char*,unsigned int) ;
 int os_snprintf_error (int,int) ;
 int p2p_set_vendor_elems (scalar_t__,scalar_t__*) ;
 int wpa_hexdump_buf (int ,char*,scalar_t__) ;
 int wpa_printf (int ,char*) ;

void wpas_vendor_elem_update(struct wpa_supplicant *wpa_s)
{
 unsigned int i;
 char buf[30];

 wpa_printf(MSG_DEBUG, "Update vendor elements");

 for (i = 0; i < NUM_VENDOR_ELEM_FRAMES; i++) {
  if (wpa_s->vendor_elem[i]) {
   int res;

   res = os_snprintf(buf, sizeof(buf), "frame[%u]", i);
   if (!os_snprintf_error(sizeof(buf), res)) {
    wpa_hexdump_buf(MSG_DEBUG, buf,
      wpa_s->vendor_elem[i]);
   }
  }
 }







}
