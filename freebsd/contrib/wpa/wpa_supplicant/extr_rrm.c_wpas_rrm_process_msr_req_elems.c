
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wpabuf {int dummy; } ;
struct wpa_supplicant {int dummy; } ;
struct rrm_measurement_request_element {scalar_t__ eid; int len; } ;


 int MSG_DEBUG ;
 scalar_t__ WLAN_EID_MEASURE_REQUEST ;
 int wpa_printf (int ,char*,...) ;
 int wpabuf_free (struct wpabuf*) ;
 int wpas_rrm_handle_msr_req_element (struct wpa_supplicant*,struct rrm_measurement_request_element const*,struct wpabuf**) ;

__attribute__((used)) static struct wpabuf *
wpas_rrm_process_msr_req_elems(struct wpa_supplicant *wpa_s, const u8 *pos,
          size_t len)
{
 struct wpabuf *buf = ((void*)0);

 while (len) {
  const struct rrm_measurement_request_element *req;
  int res;

  if (len < 2) {
   wpa_printf(MSG_DEBUG, "RRM: Truncated element");
   goto out;
  }

  req = (const struct rrm_measurement_request_element *) pos;
  if (req->eid != WLAN_EID_MEASURE_REQUEST) {
   wpa_printf(MSG_DEBUG,
       "RRM: Expected Measurement Request element, but EID is %u",
       req->eid);
   goto out;
  }

  if (req->len < 3) {
   wpa_printf(MSG_DEBUG, "RRM: Element length too short");
   goto out;
  }

  if (req->len > len - 2) {
   wpa_printf(MSG_DEBUG, "RRM: Element length too long");
   goto out;
  }

  res = wpas_rrm_handle_msr_req_element(wpa_s, req, &buf);
  if (res < 0)
   goto out;

  pos += req->len + 2;
  len -= req->len + 2;
 }

 return buf;

out:
 wpabuf_free(buf);
 return ((void*)0);
}
