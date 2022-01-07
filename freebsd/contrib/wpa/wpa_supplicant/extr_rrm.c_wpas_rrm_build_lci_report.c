
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef int u16 ;
struct wpabuf {int dummy; } ;
struct TYPE_2__ {int dst_addr; } ;
struct wpa_supplicant {TYPE_1__ rrm; int lci; int lci_time; } ;
struct rrm_measurement_request_element {scalar_t__* variable; int len; int type; int token; } ;
struct os_reltime {int sec; int usec; } ;


 int LCI_REQ_SUBELEM_MAX_AGE ;
 scalar_t__ LOCATION_SUBJECT_REMOTE ;
 int MEASUREMENT_REPORT_MODE_ACCEPT ;
 int MEASUREMENT_REPORT_MODE_REJECT_INCAPABLE ;
 int MSG_DEBUG ;
 int MSG_INFO ;
 int WPA_GET_LE16 (scalar_t__ const*) ;
 scalar_t__* get_ie (scalar_t__ const*,size_t,int ) ;
 int is_multicast_ether_addr (int ) ;
 scalar_t__ os_get_reltime (struct os_reltime*) ;
 int os_reltime_sub (struct os_reltime*,int *,struct os_reltime*) ;
 int wpa_hexdump (int ,char*,scalar_t__ const*,size_t) ;
 int wpa_printf (int ,char*,...) ;
 int * wpabuf_head_u8 (int ) ;
 int wpabuf_len (int ) ;
 scalar_t__ wpas_rrm_report_elem (struct wpabuf**,int ,int ,int ,int *,int ) ;

__attribute__((used)) static int
wpas_rrm_build_lci_report(struct wpa_supplicant *wpa_s,
     const struct rrm_measurement_request_element *req,
     struct wpabuf **buf)
{
 u8 subject;
 u16 max_age = 0;
 struct os_reltime t, diff;
 unsigned long diff_l;
 const u8 *subelem;
 const u8 *request = req->variable;
 size_t len = req->len - 3;

 if (len < 1)
  return -1;

 if (!wpa_s->lci)
  goto reject;

 subject = *request++;
 len--;

 wpa_printf(MSG_DEBUG, "Measurement request location subject=%u",
     subject);

 if (subject != LOCATION_SUBJECT_REMOTE) {
  wpa_printf(MSG_INFO,
      "Not building LCI report - bad location subject");
  return 0;
 }


 wpa_hexdump(MSG_DEBUG, "LCI request subelements", request, len);
 subelem = get_ie(request, len, LCI_REQ_SUBELEM_MAX_AGE);
 if (subelem && subelem[1] == 2)
  max_age = WPA_GET_LE16(subelem + 2);

 if (os_get_reltime(&t))
  goto reject;

 os_reltime_sub(&t, &wpa_s->lci_time, &diff);

 diff_l = diff.sec * 10 + diff.usec / 100000;

 if (max_age != 0xffff && max_age < diff_l)
  goto reject;

 if (wpas_rrm_report_elem(buf, req->token,
     MEASUREMENT_REPORT_MODE_ACCEPT, req->type,
     wpabuf_head_u8(wpa_s->lci),
     wpabuf_len(wpa_s->lci)) < 0) {
  wpa_printf(MSG_DEBUG, "Failed to add LCI report element");
  return -1;
 }

 return 0;

reject:
 if (!is_multicast_ether_addr(wpa_s->rrm.dst_addr) &&
     wpas_rrm_report_elem(buf, req->token,
     MEASUREMENT_REPORT_MODE_REJECT_INCAPABLE,
     req->type, ((void*)0), 0) < 0) {
  wpa_printf(MSG_DEBUG, "RRM: Failed to add report element");
  return -1;
 }

 return 0;
}
