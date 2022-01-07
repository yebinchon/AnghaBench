
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ypxfrstat ;
const char *
ypxfrerr_string(ypxfrstat code)
{
 switch (code) {
 case 130:
  return ("Map successfully transferred");
  break;
 case 143:
  return ("Master's version not newer");
  break;
 case 135:
  return ("No such map in server's domain");
  break;
 case 136:
  return ("Domain not supported by server");
  break;
 case 132:
  return ("Local resource allocation failure");
  break;
 case 133:
  return ("RPC failure talking to server");
  break;
 case 137:
  return ("Could not get master server address");
  break;
 case 128:
  return ("NIS server/map database error");
  break;
 case 142:
  return ("Request arguments bad");
  break;
 case 140:
  return ("Local database operation failed");
  break;
 case 139:
  return ("Local file I/O operation failed");
  break;
 case 131:
  return ("Map version skew during transfer");
  break;
 case 141:
  return ("Couldn't send \"clear\" request to local ypserv");
  break;
 case 138:
  return ("No local order number in map -- use -f flag");
  break;
 case 129:
  return ("General ypxfr error");
  break;
 case 134:
  return ("Transfer request refused by ypserv");
  break;
 default:
  return ("Unknown error code");
  break;
 }
}
