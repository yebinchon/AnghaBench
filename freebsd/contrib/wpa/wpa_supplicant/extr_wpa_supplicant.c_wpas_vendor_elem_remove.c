
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct wpa_supplicant {TYPE_1__** vendor_elem; } ;
struct TYPE_4__ {size_t used; } ;


 scalar_t__ os_memcmp (scalar_t__*,scalar_t__ const*,size_t) ;
 int os_memmove (scalar_t__*,scalar_t__*,int) ;
 int wpabuf_free (TYPE_1__*) ;
 size_t wpabuf_len (TYPE_1__*) ;
 scalar_t__* wpabuf_mhead_u8 (TYPE_1__*) ;
 int wpas_vendor_elem_update (struct wpa_supplicant*) ;

int wpas_vendor_elem_remove(struct wpa_supplicant *wpa_s, int frame,
       const u8 *elem, size_t len)
{
 u8 *ie, *end;

 ie = wpabuf_mhead_u8(wpa_s->vendor_elem[frame]);
 end = ie + wpabuf_len(wpa_s->vendor_elem[frame]);

 for (; ie + 1 < end; ie += 2 + ie[1]) {
  if (ie + len > end)
   break;
  if (os_memcmp(ie, elem, len) != 0)
   continue;

  if (wpabuf_len(wpa_s->vendor_elem[frame]) == len) {
   wpabuf_free(wpa_s->vendor_elem[frame]);
   wpa_s->vendor_elem[frame] = ((void*)0);
  } else {
   os_memmove(ie, ie + len, end - (ie + len));
   wpa_s->vendor_elem[frame]->used -= len;
  }
  wpas_vendor_elem_update(wpa_s);
  return 0;
 }

 return -1;
}
