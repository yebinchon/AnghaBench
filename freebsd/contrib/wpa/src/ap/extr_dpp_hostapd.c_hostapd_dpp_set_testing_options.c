
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hostapd_data {int dpp_ignore_netaccesskey_mismatch; scalar_t__ dpp_groups_override; scalar_t__ dpp_discovery_override; scalar_t__ dpp_config_obj_override; } ;
struct dpp_authentication {int ignore_netaccesskey_mismatch; void* groups_override; void* discovery_override; void* config_obj_override; } ;


 void* os_strdup (scalar_t__) ;

__attribute__((used)) static void hostapd_dpp_set_testing_options(struct hostapd_data *hapd,
         struct dpp_authentication *auth)
{
}
