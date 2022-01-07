
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct hostapd_data {scalar_t__ lci_req_token; scalar_t__ lci_req_active; } ;


 int MSG_DEBUG ;
 int eloop_cancel_timeout (int ,struct hostapd_data*,int *) ;
 int hostapd_lci_rep_timeout_handler ;
 int wpa_printf (int ,char*,scalar_t__,...) ;

__attribute__((used)) static void hostapd_handle_lci_report(struct hostapd_data *hapd, u8 token,
          const u8 *pos, size_t len)
{
 if (!hapd->lci_req_active || hapd->lci_req_token != token) {
  wpa_printf(MSG_DEBUG, "Unexpected LCI report, token %u", token);
  return;
 }

 hapd->lci_req_active = 0;
 eloop_cancel_timeout(hostapd_lci_rep_timeout_handler, hapd, ((void*)0));
 wpa_printf(MSG_DEBUG, "LCI report token %u len %zu", token, len);
}
