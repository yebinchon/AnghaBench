
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct eap_sim_data {int state; } ;
typedef int Boolean ;



 scalar_t__ EAP_SIM_SUBTYPE_CHALLENGE ;
 scalar_t__ EAP_SIM_SUBTYPE_CLIENT_ERROR ;
 scalar_t__ EAP_SIM_SUBTYPE_NOTIFICATION ;
 scalar_t__ EAP_SIM_SUBTYPE_REAUTHENTICATION ;
 scalar_t__ EAP_SIM_SUBTYPE_START ;
 int FALSE ;
 int MSG_INFO ;



 int TRUE ;
 int wpa_printf (int ,char*,scalar_t__) ;

__attribute__((used)) static Boolean eap_sim_unexpected_subtype(struct eap_sim_data *data,
       u8 subtype)
{
 if (subtype == EAP_SIM_SUBTYPE_CLIENT_ERROR)
  return FALSE;

 switch (data->state) {
 case 128:
  if (subtype != EAP_SIM_SUBTYPE_START) {
   wpa_printf(MSG_INFO, "EAP-SIM: Unexpected response "
       "subtype %d", subtype);
   return TRUE;
  }
  break;
 case 131:
  if (subtype != EAP_SIM_SUBTYPE_CHALLENGE) {
   wpa_printf(MSG_INFO, "EAP-SIM: Unexpected response "
       "subtype %d", subtype);
   return TRUE;
  }
  break;
 case 129:
  if (subtype != EAP_SIM_SUBTYPE_REAUTHENTICATION) {
   wpa_printf(MSG_INFO, "EAP-SIM: Unexpected response "
       "subtype %d", subtype);
   return TRUE;
  }
  break;
 case 130:
  if (subtype != EAP_SIM_SUBTYPE_NOTIFICATION) {
   wpa_printf(MSG_INFO, "EAP-SIM: Unexpected response "
       "subtype %d", subtype);
   return TRUE;
  }
  break;
 default:
  wpa_printf(MSG_INFO, "EAP-SIM: Unexpected state (%d) for "
      "processing a response", data->state);
  return TRUE;
 }

 return FALSE;
}
