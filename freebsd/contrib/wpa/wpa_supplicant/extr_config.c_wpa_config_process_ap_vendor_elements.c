
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wpabuf {int dummy; } ;
struct wpa_config {struct wpabuf* ap_vendor_elements; } ;
struct global_parse_data {int dummy; } ;


 int MSG_ERROR ;
 scalar_t__ hexstr2bin (char const*,int *,int) ;
 int os_strlen (char const*) ;
 int wpa_printf (int ,char*,...) ;
 struct wpabuf* wpabuf_alloc (int) ;
 int wpabuf_free (struct wpabuf*) ;
 int * wpabuf_put (struct wpabuf*,int) ;

__attribute__((used)) static int wpa_config_process_ap_vendor_elements(
 const struct global_parse_data *data,
 struct wpa_config *config, int line, const char *pos)
{
 struct wpabuf *tmp;
 int len = os_strlen(pos) / 2;
 u8 *p;

 if (!len) {
  wpa_printf(MSG_ERROR, "Line %d: invalid ap_vendor_elements",
      line);
  return -1;
 }

 tmp = wpabuf_alloc(len);
 if (tmp) {
  p = wpabuf_put(tmp, len);

  if (hexstr2bin(pos, p, len)) {
   wpa_printf(MSG_ERROR, "Line %d: invalid "
       "ap_vendor_elements", line);
   wpabuf_free(tmp);
   return -1;
  }

  wpabuf_free(config->ap_vendor_elements);
  config->ap_vendor_elements = tmp;
 } else {
  wpa_printf(MSG_ERROR, "Cannot allocate memory for "
      "ap_vendor_elements");
  return -1;
 }

 return 0;
}
