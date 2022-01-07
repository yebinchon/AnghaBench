
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static const char * athr_get_ioctl_name(int op)
{
 switch (op) {
 case 136:
  return "SETPARAM";
 case 147:
  return "GETPARAM";
 case 140:
  return "SETKEY";
 case 135:
  return "SETWMMPARAMS";
 case 154:
  return "DELKEY";
 case 146:
  return "GETWMMPARAMS";
 case 139:
  return "SETMLME";
 case 151:
  return "GETCHANINFO";
 case 137:
  return "SETOPTIE";
 case 148:
  return "GETOPTIE";
 case 156:
  return "ADDMAC";
 case 153:
  return "DELMAC";
 case 150:
  return "GETCHANLIST";
 case 141:
  return "SETCHANLIST";
 case 142:
  return "KICKMAC";
 case 155:
  return "CHANSWITCH";
 case 149:
  return "GETMODE";
 case 138:
  return "SETMODE";
 case 144:
  return "GET_APPIEBUF";
 case 133:
  return "SET_APPIEBUF";
 case 134:
  return "SET_ACPARAMS";
 case 152:
  return "FILTERFRAME";
 case 130:
  return "SET_RTPARAMS";
 case 131:
  return "SET_MEDENYENTRY";
 case 143:
  return "GET_MACADDR";
 case 132:
  return "SET_HBRPARAMS";
 case 129:
  return "SET_RXTIMEOUT";
 case 128:
  return "STA_STATS";
 case 145:
  return "GETWPAIE";
 default:
  return "??";
 }
}
