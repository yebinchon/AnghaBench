
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hostapd_data {int mbo_assoc_disallow; int iface; int parameter_set_count; TYPE_1__* conf; int iconf; void* dpp_configurator_params; void* dpp_ignore_netaccesskey_mismatch; void* dpp_groups_override; void* dpp_discovery_override; void* dpp_config_obj_override; void* ext_eapol_frame_io; void* ext_mgmt_frame_handling; } ;
struct TYPE_2__ {int mbo_enabled; } ;


 int MSG_DEBUG ;
 void* atoi (char*) ;
 void* dpp_test ;
 int hostapd_disassoc_accept_mac (struct hostapd_data*) ;
 int hostapd_disassoc_deny_mac (struct hostapd_data*) ;
 int hostapd_set_iface (int ,TYPE_1__*,char*,char*) ;
 int hostapd_wps_update_ie (struct hostapd_data*) ;
 scalar_t__ ieee802_11_update_beacons (int ) ;
 int os_free (void*) ;
 scalar_t__ os_strcasecmp (char*,char*) ;
 char* os_strchr (char*,char) ;
 void* os_strdup (char*) ;
 scalar_t__ os_strncmp (char*,char*,int) ;
 long strtol (char*,int *,int ) ;
 int wpa_printf (int ,char*,...) ;
 int wps_corrupt_pkhash ;
 int wps_testing_dummy_cred ;
 int wps_version_number ;

__attribute__((used)) static int hostapd_ctrl_iface_set(struct hostapd_data *hapd, char *cmd)
{
 char *value;
 int ret = 0;

 value = os_strchr(cmd, ' ');
 if (value == ((void*)0))
  return -1;
 *value++ = '\0';

 wpa_printf(MSG_DEBUG, "CTRL_IFACE SET '%s'='%s'", cmd, value);
 if (0) {
 } else {
  ret = hostapd_set_iface(hapd->iconf, hapd->conf, cmd, value);
  if (ret)
   return ret;

  if (os_strcasecmp(cmd, "deny_mac_file") == 0) {
   hostapd_disassoc_deny_mac(hapd);
  } else if (os_strcasecmp(cmd, "accept_mac_file") == 0) {
   hostapd_disassoc_accept_mac(hapd);
  } else if (os_strncmp(cmd, "wme_ac_", 7) == 0 ||
      os_strncmp(cmd, "wmm_ac_", 7) == 0) {
   hapd->parameter_set_count++;
   if (ieee802_11_update_beacons(hapd->iface))
    wpa_printf(MSG_DEBUG,
        "Failed to update beacons with WMM parameters");
  }
 }

 return ret;
}
