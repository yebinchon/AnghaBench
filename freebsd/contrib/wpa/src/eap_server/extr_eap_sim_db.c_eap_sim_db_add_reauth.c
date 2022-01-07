
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct eap_sim_reauth {int mk; } ;
struct eap_sim_db_data {scalar_t__ sqlite_db; } ;


 int EAP_SIM_MK_LEN ;
 int MSG_DEBUG ;
 int db_add_reauth (struct eap_sim_db_data*,char const*,char*,int ,int const*,int *,int *,int *) ;
 struct eap_sim_reauth* eap_sim_db_add_reauth_data (struct eap_sim_db_data*,char const*,char*,int ) ;
 int os_memcpy (int ,int const*,int ) ;
 int wpa_printf (int ,char*,char*,char const*) ;

int eap_sim_db_add_reauth(struct eap_sim_db_data *data, const char *permanent,
     char *reauth_id, u16 counter, const u8 *mk)
{
 struct eap_sim_reauth *r;

 wpa_printf(MSG_DEBUG, "EAP-SIM DB: Add reauth_id '%s' for permanent "
     "identity '%s'", reauth_id, permanent);






 r = eap_sim_db_add_reauth_data(data, permanent, reauth_id, counter);
 if (r == ((void*)0))
  return -1;

 os_memcpy(r->mk, mk, EAP_SIM_MK_LEN);

 return 0;
}
