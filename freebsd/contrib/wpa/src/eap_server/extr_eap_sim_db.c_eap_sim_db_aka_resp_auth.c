
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int res_len; int res; int ck; int ik; int autn; int rand; } ;
struct TYPE_4__ {TYPE_1__ aka; } ;
struct eap_sim_db_pending {int cb_session_ctx; int state; TYPE_2__ u; } ;
struct eap_sim_db_data {int ctx; int (* get_complete_cb ) (int ,int ) ;} ;


 int EAP_AKA_AUTN_LEN ;
 int EAP_AKA_CK_LEN ;
 int EAP_AKA_IK_LEN ;
 int EAP_AKA_RAND_LEN ;
 int EAP_AKA_RES_MAX_LEN ;
 int FAILURE ;
 int MSG_DEBUG ;
 int SUCCESS ;
 int eap_sim_db_add_pending (struct eap_sim_db_data*,struct eap_sim_db_pending*) ;
 int eap_sim_db_free_pending (struct eap_sim_db_data*,struct eap_sim_db_pending*) ;
 struct eap_sim_db_pending* eap_sim_db_get_pending (struct eap_sim_db_data*,char const*,int) ;
 scalar_t__ hexstr2bin (char*,int ,int) ;
 char* os_strchr (char*,char) ;
 scalar_t__ os_strncmp (char*,char*,int) ;
 int stub1 (int ,int ) ;
 int stub2 (int ,int ) ;
 int wpa_printf (int ,char*) ;

__attribute__((used)) static void eap_sim_db_aka_resp_auth(struct eap_sim_db_data *data,
         const char *imsi, char *buf)
{
 char *start, *end;
 struct eap_sim_db_pending *entry;







 entry = eap_sim_db_get_pending(data, imsi, 1);
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

 end = os_strchr(start, ' ');
 if (end == ((void*)0))
  goto parse_fail;
 *end = '\0';
 if (hexstr2bin(start, entry->u.aka.rand, EAP_AKA_RAND_LEN))
  goto parse_fail;

 start = end + 1;
 end = os_strchr(start, ' ');
 if (end == ((void*)0))
  goto parse_fail;
 *end = '\0';
 if (hexstr2bin(start, entry->u.aka.autn, EAP_AKA_AUTN_LEN))
  goto parse_fail;

 start = end + 1;
 end = os_strchr(start, ' ');
 if (end == ((void*)0))
  goto parse_fail;
 *end = '\0';
 if (hexstr2bin(start, entry->u.aka.ik, EAP_AKA_IK_LEN))
  goto parse_fail;

 start = end + 1;
 end = os_strchr(start, ' ');
 if (end == ((void*)0))
  goto parse_fail;
 *end = '\0';
 if (hexstr2bin(start, entry->u.aka.ck, EAP_AKA_CK_LEN))
  goto parse_fail;

 start = end + 1;
 end = os_strchr(start, ' ');
 if (end)
  *end = '\0';
 else {
  end = start;
  while (*end)
   end++;
 }
 entry->u.aka.res_len = (end - start) / 2;
 if (entry->u.aka.res_len > EAP_AKA_RES_MAX_LEN) {
  wpa_printf(MSG_DEBUG, "EAP-SIM DB: Too long RES");
  entry->u.aka.res_len = 0;
  goto parse_fail;
 }
 if (hexstr2bin(start, entry->u.aka.res, entry->u.aka.res_len))
  goto parse_fail;

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
