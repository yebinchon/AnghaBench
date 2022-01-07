
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct eap_sim_db_data {int * get_complete_cb; } ;
typedef int buf ;


 int MSG_DEBUG ;
 int MSG_INFO ;
 int MSG_MSGDUMP ;
 int eap_sim_db_aka_resp_auth (struct eap_sim_db_data*,char*,char*) ;
 int eap_sim_db_sim_resp_auth (struct eap_sim_db_data*,char*,char*) ;
 char* os_strchr (char*,char) ;
 scalar_t__ os_strcmp (char*,char*) ;
 int recv (int,char*,int,int ) ;
 int wpa_hexdump_ascii_key (int ,char*,int *,int) ;
 int wpa_printf (int ,char*,...) ;

__attribute__((used)) static void eap_sim_db_receive(int sock, void *eloop_ctx, void *sock_ctx)
{
 struct eap_sim_db_data *data = eloop_ctx;
 char buf[1000], *pos, *cmd, *imsi;
 int res;

 res = recv(sock, buf, sizeof(buf) - 1, 0);
 if (res < 0)
  return;
 buf[res] = '\0';
 wpa_hexdump_ascii_key(MSG_MSGDUMP, "EAP-SIM DB: Received from an "
         "external source", (u8 *) buf, res);
 if (res == 0)
  return;

 if (data->get_complete_cb == ((void*)0)) {
  wpa_printf(MSG_DEBUG, "EAP-SIM DB: No get_complete_cb "
      "registered");
  return;
 }



 cmd = buf;
 pos = os_strchr(cmd, ' ');
 if (pos == ((void*)0))
  goto parse_fail;
 *pos = '\0';
 imsi = pos + 1;
 pos = os_strchr(imsi, ' ');
 if (pos == ((void*)0))
  goto parse_fail;
 *pos = '\0';
 wpa_printf(MSG_DEBUG, "EAP-SIM DB: External response=%s for IMSI %s",
     cmd, imsi);

 if (os_strcmp(cmd, "SIM-RESP-AUTH") == 0)
  eap_sim_db_sim_resp_auth(data, imsi, pos + 1);
 else if (os_strcmp(cmd, "AKA-RESP-AUTH") == 0)
  eap_sim_db_aka_resp_auth(data, imsi, pos + 1);
 else
  wpa_printf(MSG_INFO, "EAP-SIM DB: Unknown external response "
      "'%s'", cmd);
 return;

parse_fail:
 wpa_printf(MSG_DEBUG, "EAP-SIM DB: Failed to parse response string");
}
