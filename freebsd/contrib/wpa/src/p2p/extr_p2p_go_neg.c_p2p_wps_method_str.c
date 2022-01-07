
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum p2p_wps_method { ____Placeholder_p2p_wps_method } p2p_wps_method ;
__attribute__((used)) static const char * p2p_wps_method_str(enum p2p_wps_method wps_method)
{
 switch (wps_method) {
 case 129:
  return "Display";
 case 128:
  return "Keypad";
 case 130:
  return "PBC";
 case 132:
  return "NFC";
 case 131:
  return "P2PS";
 default:
  return "??";
 }
}
