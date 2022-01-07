
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int num_chal; int * rand; int * sres; int * kc; } ;
struct TYPE_4__ {TYPE_1__ sim; } ;
struct eap_sim_db_pending {int cb_session_ctx; int state; TYPE_2__ u; } ;
struct eap_sim_db_data {int ctx; int (* get_complete_cb ) (int ,int ) ;} ;


 int EAP_SIM_KC_LEN ;
 int EAP_SIM_MAX_CHAL ;
 int EAP_SIM_SRES_LEN ;
 int FAILURE ;
 int GSM_RAND_LEN ;
 int MSG_DEBUG ;
 int SUCCESS ;
 int eap_sim_db_add_pending (struct eap_sim_db_data*,struct eap_sim_db_pending*) ;
 int eap_sim_db_free_pending (struct eap_sim_db_data*,struct eap_sim_db_pending*) ;
 struct eap_sim_db_pending* eap_sim_db_get_pending (struct eap_sim_db_data*,char const*,int ) ;
 scalar_t__ hexstr2bin (char*,int ,int ) ;
 char* os_strchr (char*,char) ;
 scalar_t__ os_strncmp (char*,char*,int) ;
 int stub1 (int ,int ) ;
 int stub2 (int ,int ) ;
 int wpa_printf (int ,char*) ;

__attribute__((used)) static void eap_sim_db_sim_resp_auth(struct eap_sim_db_data *data,
         const char *imsi, char *buf)
{
 char *start, *end, *pos;
 struct eap_sim_db_pending *entry;
 int num_chal;







 entry = eap_sim_db_get_pending(data, imsi, 0);
 if (entry == ((void*)0)) {
  wpa_printf(MSG_DEBUG, "EAP-SIM DB: No pending entry for the "
      "received message found");
  return;
 }

 start = buf;
 if (os_strncmp(start, "FAILURE", 7) == 0) {
  wpa_printf(MSG_DEBUG, "EAP-SIM DB: External server reported "
      "failure");
  entry->state = FAILURE;
  eap_sim_db_add_pending(data, entry);
  data->get_complete_cb(data->ctx, entry->cb_session_ctx);
  return;
 }

 num_chal = 0;
 while (num_chal < EAP_SIM_MAX_CHAL) {
  end = os_strchr(start, ' ');
  if (end)
   *end = '\0';

  pos = os_strchr(start, ':');
  if (pos == ((void*)0))
   goto parse_fail;
  *pos = '\0';
  if (hexstr2bin(start, entry->u.sim.kc[num_chal],
          EAP_SIM_KC_LEN))
   goto parse_fail;

  start = pos + 1;
  pos = os_strchr(start, ':');
  if (pos == ((void*)0))
   goto parse_fail;
  *pos = '\0';
  if (hexstr2bin(start, entry->u.sim.sres[num_chal],
          EAP_SIM_SRES_LEN))
   goto parse_fail;

  start = pos + 1;
  if (hexstr2bin(start, entry->u.sim.rand[num_chal],
          GSM_RAND_LEN))
   goto parse_fail;

  num_chal++;
  if (end == ((void*)0))
   break;
  else
   start = end + 1;
 }
 entry->u.sim.num_chal = num_chal;

 entry->state = SUCCESS;
 wpa_printf(MSG_DEBUG, "EAP-SIM DB: Authentication data parsed "
     "successfully - callback");
 eap_sim_db_add_pending(data, entry);
 data->get_complete_cb(data->ctx, entry->cb_session_ctx);
 return;

parse_fail:
 wpa_printf(MSG_DEBUG, "EAP-SIM DB: Failed to parse response string");
 eap_sim_db_free_pending(data, entry);
}
