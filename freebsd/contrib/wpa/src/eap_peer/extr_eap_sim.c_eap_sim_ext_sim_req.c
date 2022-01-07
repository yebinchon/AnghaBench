
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eap_sm {int dummy; } ;
struct eap_sim_data {size_t num_chal; int * rand; } ;
typedef int req ;


 int GSM_RAND_LEN ;
 int MSG_DEBUG ;
 int eap_sm_request_sim (struct eap_sm*,char*) ;
 int os_snprintf (char*,int,char*) ;
 int wpa_printf (int ,char*) ;
 int wpa_snprintf_hex (char*,int,int ,int ) ;

__attribute__((used)) static int eap_sim_ext_sim_req(struct eap_sm *sm, struct eap_sim_data *data)
{
 char req[200], *pos, *end;
 size_t i;

 wpa_printf(MSG_DEBUG, "EAP-SIM: Use external SIM processing");
 pos = req;
 end = pos + sizeof(req);
 pos += os_snprintf(pos, end - pos, "GSM-AUTH");
 for (i = 0; i < data->num_chal; i++) {
  pos += os_snprintf(pos, end - pos, ":");
  pos += wpa_snprintf_hex(pos, end - pos, data->rand[i],
     GSM_RAND_LEN);
 }

 eap_sm_request_sim(sm, req);
 return 1;
}
