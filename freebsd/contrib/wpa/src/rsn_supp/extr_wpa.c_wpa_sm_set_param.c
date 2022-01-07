
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_sm {unsigned int dot11RSNAConfigPMKLifetime; unsigned int dot11RSNAConfigPMKReauthThreshold; unsigned int dot11RSNAConfigSATimeout; unsigned int proto; unsigned int pairwise_cipher; unsigned int group_cipher; unsigned int key_mgmt; unsigned int mgmt_group_cipher; unsigned int rsn_enabled; unsigned int mfp; unsigned int ocv; } ;
typedef enum wpa_sm_conf_params { ____Placeholder_wpa_sm_conf_params } wpa_sm_conf_params ;
int wpa_sm_set_param(struct wpa_sm *sm, enum wpa_sm_conf_params param,
       unsigned int value)
{
 int ret = 0;

 if (sm == ((void*)0))
  return -1;

 switch (param) {
 case 138:
  if (value > 0)
   sm->dot11RSNAConfigPMKLifetime = value;
  else
   ret = -1;
  break;
 case 137:
  if (value > 0 && value <= 100)
   sm->dot11RSNAConfigPMKReauthThreshold = value;
  else
   ret = -1;
  break;
 case 136:
  if (value > 0)
   sm->dot11RSNAConfigSATimeout = value;
  else
   ret = -1;
  break;
 case 129:
  sm->proto = value;
  break;
 case 130:
  sm->pairwise_cipher = value;
  break;
 case 135:
  sm->group_cipher = value;
  break;
 case 134:
  sm->key_mgmt = value;
  break;





 case 128:
  sm->rsn_enabled = value;
  break;
 case 133:
  sm->mfp = value;
  break;
 case 131:
  sm->ocv = value;
  break;
 default:
  break;
 }

 return ret;
}
