
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hostapd_data {int dpp_allowed_roles; int dpp_init_done; } ;


 int DPP_CAPAB_CONFIGURATOR ;
 int DPP_CAPAB_ENROLLEE ;
 int hostapd_dpp_add_controllers (struct hostapd_data*) ;

int hostapd_dpp_init(struct hostapd_data *hapd)
{
 hapd->dpp_allowed_roles = DPP_CAPAB_CONFIGURATOR | DPP_CAPAB_ENROLLEE;
 hapd->dpp_init_done = 1;
 return hostapd_dpp_add_controllers(hapd);
}
