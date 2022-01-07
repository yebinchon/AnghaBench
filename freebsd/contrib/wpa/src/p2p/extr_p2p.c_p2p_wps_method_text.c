
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum p2p_wps_method { ____Placeholder_p2p_wps_method } p2p_wps_method ;
const char * p2p_wps_method_text(enum p2p_wps_method method)
{
 switch (method) {
 case 132:
  return "not-ready";
 case 129:
  return "Display";
 case 128:
  return "Keypad";
 case 130:
  return "PBC";
 case 133:
  return "NFC";
 case 131:
  return "P2PS";
 }

 return "??";
}
