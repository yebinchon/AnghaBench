
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int errbuf ;
 int errno ;
 int snprintf (char*,int,char const*,int ) ;
 int strerror (int ) ;

const char *
uu_lockerr(int uu_lockresult)
{
 static char errbuf[128];
 const char *fmt;

 switch (uu_lockresult) {
  case 135:
   return "device in use";
  case 133:
   return "";
  case 132:
   fmt = "open error: %s";
   break;
  case 130:
   fmt = "read error: %s";
   break;
  case 136:
   fmt = "creat error: %s";
   break;
  case 128:
   fmt = "write error: %s";
   break;
  case 134:
   fmt = "link error: %s";
   break;
  case 129:
   fmt = "too many tries: %s";
   break;
  case 131:
   fmt = "not locking process: %s";
   break;
  default:
   fmt = "undefined error: %s";
   break;
 }

 (void)snprintf(errbuf, sizeof(errbuf), fmt, strerror(errno));
 return errbuf;
}
