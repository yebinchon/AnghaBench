
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_short ;
struct servent {int s_port; } ;
typedef int port_range ;


 int EX_DATAERR ;
 scalar_t__ GETNUMPORTS (int ) ;
 int SETLOPORT (int ,scalar_t__) ;
 int SETNUMPORTS (int ,scalar_t__) ;
 int errx (int ,char*,char const*,...) ;
 struct servent* getservbyname (char const*,char const*) ;
 scalar_t__ ntohs (int ) ;
 int sscanf (char const*,char*,scalar_t__*,scalar_t__*) ;
 char* strchr (char const*,char) ;
 scalar_t__ strtol (char const*,char**,int) ;

__attribute__((used)) static int
StrToPortRange (const char* str, const char* proto, port_range *portRange)
{
 char* sep;
 struct servent* sp;
 char* end;
 u_short loPort;
 u_short hiPort;


 sp = getservbyname (str,proto);
 if (sp) {
  SETLOPORT(*portRange, ntohs(sp->s_port));
  SETNUMPORTS(*portRange, 1);
  return 0;
 }


 sep = strchr (str, '-');
 if (sep == ((void*)0)) {
  SETLOPORT(*portRange, strtol(str, &end, 10));
  if (end != str) {

   SETNUMPORTS(*portRange, 1);
   return 0;
  }


  errx (EX_DATAERR, "%s/%s: unknown service", str, proto);
 }


 sscanf (str, "%hu-%hu", &loPort, &hiPort);
 SETLOPORT(*portRange, loPort);
 SETNUMPORTS(*portRange, 0);
 if (loPort <= hiPort)
  SETNUMPORTS(*portRange, hiPort - loPort + 1);

 if (GETNUMPORTS(*portRange) == 0)
  errx (EX_DATAERR, "invalid port range %s", str);

 return 0;
}
