
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum dpp_akm { ____Placeholder_dpp_akm } dpp_akm ;
const char * dpp_akm_str(enum dpp_akm akm)
{
 switch (akm) {
 case 133:
  return "dpp";
 case 132:
  return "psk";
 case 129:
  return "sae";
 case 131:
  return "psk+sae";
 case 128:
  return "dpp+sae";
 case 130:
  return "dpp+psk+sae";
 default:
  return "??";
 }
}
