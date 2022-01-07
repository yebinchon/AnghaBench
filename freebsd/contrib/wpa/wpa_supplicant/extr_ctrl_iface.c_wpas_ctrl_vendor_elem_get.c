
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_supplicant {int ** vendor_elem; } ;


 int NUM_VENDOR_ELEM_FRAMES ;
 int atoi (char*) ;
 int wpa_snprintf_hex (char*,size_t,int ,int ) ;
 int wpabuf_head_u8 (int *) ;
 int wpabuf_len (int *) ;
 struct wpa_supplicant* wpas_vendor_elem (struct wpa_supplicant*,int) ;

__attribute__((used)) static int wpas_ctrl_vendor_elem_get(struct wpa_supplicant *wpa_s, char *cmd,
         char *buf, size_t buflen)
{
 int frame = atoi(cmd);

 if (frame < 0 || frame >= NUM_VENDOR_ELEM_FRAMES)
  return -1;
 wpa_s = wpas_vendor_elem(wpa_s, frame);

 if (wpa_s->vendor_elem[frame] == ((void*)0))
  return 0;

 return wpa_snprintf_hex(buf, buflen,
    wpabuf_head_u8(wpa_s->vendor_elem[frame]),
    wpabuf_len(wpa_s->vendor_elem[frame]));
}
