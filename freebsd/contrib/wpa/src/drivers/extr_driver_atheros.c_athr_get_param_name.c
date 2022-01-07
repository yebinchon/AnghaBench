
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static const char * athr_get_param_name(int op)
{
 switch (op) {
 case 136:
  return "MCASTCIPHER";
 case 132:
  return "MCASTKEYLEN";
 case 129:
  return "UCASTCIPHERS";
 case 133:
  return "KEYMGTALGS";
 case 130:
  return "RSNCAPS";
 case 128:
  return "WPA";
 case 135:
  return "AUTHMODE";
 case 131:
  return "PRIVACY";
 case 134:
  return "COUNTERMEASURES";
 default:
  return "??";
 }
}
