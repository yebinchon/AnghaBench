
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eap_sm {int dummy; } ;
struct eap_aka_data {int autn; int rand; } ;
typedef int req ;


 int EAP_AKA_AUTN_LEN ;
 int EAP_AKA_RAND_LEN ;
 int MSG_DEBUG ;
 int eap_sm_request_sim (struct eap_sm*,char*) ;
 int os_snprintf (char*,int,char*) ;
 int wpa_printf (int ,char*) ;
 int wpa_snprintf_hex (char*,int,int ,int ) ;

__attribute__((used)) static int eap_aka_ext_sim_req(struct eap_sm *sm, struct eap_aka_data *data)
{
 char req[200], *pos, *end;

 wpa_printf(MSG_DEBUG, "EAP-AKA: Use external USIM processing");
 pos = req;
 end = pos + sizeof(req);
 pos += os_snprintf(pos, end - pos, "UMTS-AUTH");
 pos += os_snprintf(pos, end - pos, ":");
 pos += wpa_snprintf_hex(pos, end - pos, data->rand, EAP_AKA_RAND_LEN);
 pos += os_snprintf(pos, end - pos, ":");
 wpa_snprintf_hex(pos, end - pos, data->autn, EAP_AKA_AUTN_LEN);

 eap_sm_request_sim(sm, req);
 return 1;
}
