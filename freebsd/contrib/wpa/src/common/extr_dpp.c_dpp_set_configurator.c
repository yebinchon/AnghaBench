
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dpp_global {int dummy; } ;
struct dpp_authentication {int conf; } ;


 int MSG_DEBUG ;
 int MSG_INFO ;
 int atoi (char const*) ;
 scalar_t__ dpp_configuration_parse (struct dpp_authentication*,char const*) ;
 int dpp_configurator_get_id (struct dpp_global*,int ) ;
 char* os_strstr (char const*,char*) ;
 int wpa_msg (void*,int ,char*) ;
 int wpa_printf (int ,char*,...) ;

int dpp_set_configurator(struct dpp_global *dpp, void *msg_ctx,
    struct dpp_authentication *auth,
    const char *cmd)
{
 const char *pos;

 if (!cmd)
  return 0;

 wpa_printf(MSG_DEBUG, "DPP: Set configurator parameters: %s", cmd);

 pos = os_strstr(cmd, " configurator=");
 if (pos) {
  pos += 14;
  auth->conf = dpp_configurator_get_id(dpp, atoi(pos));
  if (!auth->conf) {
   wpa_printf(MSG_INFO,
       "DPP: Could not find the specified configurator");
   return -1;
  }
 }

 if (dpp_configuration_parse(auth, cmd) < 0) {
  wpa_msg(msg_ctx, MSG_INFO,
   "DPP: Failed to set configurator parameters");
  return -1;
 }
 return 0;
}
