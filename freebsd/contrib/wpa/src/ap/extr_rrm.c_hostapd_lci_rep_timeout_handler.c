
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hostapd_data {scalar_t__ lci_req_active; int lci_req_token; } ;


 int MSG_DEBUG ;
 int wpa_printf (int ,char*,int ) ;

__attribute__((used)) static void hostapd_lci_rep_timeout_handler(void *eloop_data, void *user_ctx)
{
 struct hostapd_data *hapd = eloop_data;

 wpa_printf(MSG_DEBUG, "RRM: LCI request (token %u) timed out",
     hapd->lci_req_token);
 hapd->lci_req_active = 0;
}
