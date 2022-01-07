
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpabuf {int dummy; } ;
struct wpa_supplicant {struct wpabuf** vendor_elem; } ;
struct ieee802_11_elems {int dummy; } ;


 int NUM_VENDOR_ELEM_FRAMES ;
 scalar_t__ ParseFailed ;
 int atoi (char*) ;
 scalar_t__ hexstr2bin (char*,int ,size_t) ;
 scalar_t__ ieee802_11_parse_elems (int ,size_t,struct ieee802_11_elems*,int ) ;
 char* os_strchr (char*,char) ;
 size_t os_strlen (char*) ;
 struct wpabuf* wpabuf_alloc (size_t) ;
 int wpabuf_free (struct wpabuf*) ;
 int wpabuf_head_u8 (struct wpabuf*) ;
 int wpabuf_put (struct wpabuf*,size_t) ;
 int wpabuf_put_buf (struct wpabuf*,struct wpabuf*) ;
 scalar_t__ wpabuf_resize (struct wpabuf**,size_t) ;
 struct wpa_supplicant* wpas_vendor_elem (struct wpa_supplicant*,int) ;
 int wpas_vendor_elem_update (struct wpa_supplicant*) ;

__attribute__((used)) static int wpas_ctrl_vendor_elem_add(struct wpa_supplicant *wpa_s, char *cmd)
{
 char *pos = cmd;
 int frame;
 size_t len;
 struct wpabuf *buf;
 struct ieee802_11_elems elems;

 frame = atoi(pos);
 if (frame < 0 || frame >= NUM_VENDOR_ELEM_FRAMES)
  return -1;
 wpa_s = wpas_vendor_elem(wpa_s, frame);

 pos = os_strchr(pos, ' ');
 if (pos == ((void*)0))
  return -1;
 pos++;

 len = os_strlen(pos);
 if (len == 0)
  return 0;
 if (len & 1)
  return -1;
 len /= 2;

 buf = wpabuf_alloc(len);
 if (buf == ((void*)0))
  return -1;

 if (hexstr2bin(pos, wpabuf_put(buf, len), len) < 0) {
  wpabuf_free(buf);
  return -1;
 }

 if (ieee802_11_parse_elems(wpabuf_head_u8(buf), len, &elems, 0) ==
     ParseFailed) {
  wpabuf_free(buf);
  return -1;
 }

 if (wpa_s->vendor_elem[frame] == ((void*)0)) {
  wpa_s->vendor_elem[frame] = buf;
  wpas_vendor_elem_update(wpa_s);
  return 0;
 }

 if (wpabuf_resize(&wpa_s->vendor_elem[frame], len) < 0) {
  wpabuf_free(buf);
  return -1;
 }

 wpabuf_put_buf(wpa_s->vendor_elem[frame], buf);
 wpabuf_free(buf);
 wpas_vendor_elem_update(wpa_s);

 return 0;
}
