
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_short ;
struct servent {int s_port; } ;


 int errx (int,char*,char const*,char const*) ;
 struct servent* getservbyname (char const*,char const*) ;
 int htons (int ) ;
 int strtol (char const*,char**,int) ;

u_short StrToPort (const char* str, const char* proto)
{
 u_short port;
 struct servent* sp;
 char* end;

 port = strtol (str, &end, 10);
 if (end != str)
  return htons (port);

 sp = getservbyname (str, proto);
 if (!sp)
  errx (1, "%s/%s: unknown service", str, proto);

 return sp->s_port;
}
