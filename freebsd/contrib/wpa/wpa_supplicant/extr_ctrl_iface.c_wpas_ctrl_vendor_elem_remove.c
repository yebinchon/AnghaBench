
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wpa_supplicant {int ** vendor_elem; } ;
struct ieee802_11_elems {int dummy; } ;


 int NUM_VENDOR_ELEM_FRAMES ;
 scalar_t__ ParseFailed ;
 int atoi (char*) ;
 scalar_t__ hexstr2bin (char*,int *,size_t) ;
 scalar_t__ ieee802_11_parse_elems (int *,size_t,struct ieee802_11_elems*,int ) ;
 int os_free (int *) ;
 int * os_malloc (size_t) ;
 char* os_strchr (char*,char) ;
 size_t os_strlen (char*) ;
 int wpabuf_free (int *) ;
 struct wpa_supplicant* wpas_vendor_elem (struct wpa_supplicant*,int) ;
 int wpas_vendor_elem_remove (struct wpa_supplicant*,int,int *,size_t) ;
 int wpas_vendor_elem_update (struct wpa_supplicant*) ;

__attribute__((used)) static int wpas_ctrl_vendor_elem_remove(struct wpa_supplicant *wpa_s, char *cmd)
{
 char *pos = cmd;
 int frame;
 size_t len;
 u8 *buf;
 struct ieee802_11_elems elems;
 int res;

 frame = atoi(pos);
 if (frame < 0 || frame >= NUM_VENDOR_ELEM_FRAMES)
  return -1;
 wpa_s = wpas_vendor_elem(wpa_s, frame);

 pos = os_strchr(pos, ' ');
 if (pos == ((void*)0))
  return -1;
 pos++;

 if (*pos == '*') {
  wpabuf_free(wpa_s->vendor_elem[frame]);
  wpa_s->vendor_elem[frame] = ((void*)0);
  wpas_vendor_elem_update(wpa_s);
  return 0;
 }

 if (wpa_s->vendor_elem[frame] == ((void*)0))
  return -1;

 len = os_strlen(pos);
 if (len == 0)
  return 0;
 if (len & 1)
  return -1;
 len /= 2;

 buf = os_malloc(len);
 if (buf == ((void*)0))
  return -1;

 if (hexstr2bin(pos, buf, len) < 0) {
  os_free(buf);
  return -1;
 }

 if (ieee802_11_parse_elems(buf, len, &elems, 0) == ParseFailed) {
  os_free(buf);
  return -1;
 }

 res = wpas_vendor_elem_remove(wpa_s, frame, buf, len);
 os_free(buf);
 return res;
}
