
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
typedef enum p2p_wps_method { ____Placeholder_p2p_wps_method } p2p_wps_method ;


 int DEV_PW_DEFAULT ;
 int DEV_PW_NFC_CONNECTION_HANDOVER ;
 int DEV_PW_P2PS_DEFAULT ;
 int DEV_PW_PUSHBUTTON ;
 int DEV_PW_REGISTRAR_SPECIFIED ;
 int DEV_PW_USER_SPECIFIED ;






u16 p2p_wps_method_pw_id(enum p2p_wps_method wps_method)
{
 switch (wps_method) {
 case 129:
  return DEV_PW_REGISTRAR_SPECIFIED;
 case 128:
  return DEV_PW_USER_SPECIFIED;
 case 130:
  return DEV_PW_PUSHBUTTON;
 case 132:
  return DEV_PW_NFC_CONNECTION_HANDOVER;
 case 131:
  return DEV_PW_P2PS_DEFAULT;
 default:
  return DEV_PW_DEFAULT;
 }
}
