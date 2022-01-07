
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct hostapd_data {int msg_ctx; TYPE_1__* iface; } ;
struct dpp_authentication {int dummy; } ;
struct TYPE_4__ {int dpp; } ;
struct TYPE_3__ {TYPE_2__* interfaces; } ;


 int dpp_auth_deinit (struct dpp_authentication*) ;
 scalar_t__ dpp_configurator_own_config (struct dpp_authentication*,char*,int) ;
 scalar_t__ dpp_set_configurator (int ,int ,struct dpp_authentication*,char const*) ;
 char* get_param (char const*,char*) ;
 int hostapd_dpp_handle_config_obj (struct hostapd_data*,struct dpp_authentication*) ;
 int hostapd_dpp_set_testing_options (struct hostapd_data*,struct dpp_authentication*) ;
 int os_free (char*) ;
 struct dpp_authentication* os_zalloc (int) ;

int hostapd_dpp_configurator_sign(struct hostapd_data *hapd, const char *cmd)
{
 struct dpp_authentication *auth;
 int ret = -1;
 char *curve = ((void*)0);

 auth = os_zalloc(sizeof(*auth));
 if (!auth)
  return -1;

 curve = get_param(cmd, " curve=");
 hostapd_dpp_set_testing_options(hapd, auth);
 if (dpp_set_configurator(hapd->iface->interfaces->dpp, hapd->msg_ctx,
     auth, cmd) == 0 &&
     dpp_configurator_own_config(auth, curve, 1) == 0) {
  hostapd_dpp_handle_config_obj(hapd, auth);
  ret = 0;
 }

 dpp_auth_deinit(auth);
 os_free(curve);

 return ret;
}
