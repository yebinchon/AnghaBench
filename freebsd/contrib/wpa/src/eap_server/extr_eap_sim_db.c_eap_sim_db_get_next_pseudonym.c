
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eap_sim_db_data {int dummy; } ;
typedef enum eap_sim_db_method { ____Placeholder_eap_sim_db_method } eap_sim_db_method ;


 char EAP_AKA_PRIME_PSEUDONYM_PREFIX ;
 char EAP_AKA_PSEUDONYM_PREFIX ;



 char EAP_SIM_PSEUDONYM_PREFIX ;
 char EAP_SIM_REAUTH_ID_PREFIX ;
 char* eap_sim_db_get_next (struct eap_sim_db_data*,char) ;

char * eap_sim_db_get_next_pseudonym(struct eap_sim_db_data *data,
         enum eap_sim_db_method method)
{
 char prefix = EAP_SIM_REAUTH_ID_PREFIX;

 switch (method) {
 case 128:
  prefix = EAP_SIM_PSEUDONYM_PREFIX;
  break;
 case 130:
  prefix = EAP_AKA_PSEUDONYM_PREFIX;
  break;
 case 129:
  prefix = EAP_AKA_PRIME_PSEUDONYM_PREFIX;
  break;
 }

 return eap_sim_db_get_next(data, prefix);
}
