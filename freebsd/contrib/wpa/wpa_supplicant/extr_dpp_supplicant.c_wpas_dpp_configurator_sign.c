
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_supplicant {int dpp; } ;
struct dpp_authentication {int dummy; } ;


 int dpp_auth_deinit (struct dpp_authentication*) ;
 scalar_t__ dpp_configurator_own_config (struct dpp_authentication*,char*,int ) ;
 scalar_t__ dpp_set_configurator (int ,struct wpa_supplicant*,struct dpp_authentication*,char const*) ;
 char* get_param (char const*,char*) ;
 int os_free (char*) ;
 struct dpp_authentication* os_zalloc (int) ;
 int wpas_dpp_handle_config_obj (struct wpa_supplicant*,struct dpp_authentication*) ;
 int wpas_dpp_set_testing_options (struct wpa_supplicant*,struct dpp_authentication*) ;

int wpas_dpp_configurator_sign(struct wpa_supplicant *wpa_s, const char *cmd)
{
 struct dpp_authentication *auth;
 int ret = -1;
 char *curve = ((void*)0);

 auth = os_zalloc(sizeof(*auth));
 if (!auth)
  return -1;

 curve = get_param(cmd, " curve=");
 wpas_dpp_set_testing_options(wpa_s, auth);
 if (dpp_set_configurator(wpa_s->dpp, wpa_s, auth, cmd) == 0 &&
     dpp_configurator_own_config(auth, curve, 0) == 0)
  ret = wpas_dpp_handle_config_obj(wpa_s, auth);

 dpp_auth_deinit(auth);
 os_free(curve);

 return ret;
}
