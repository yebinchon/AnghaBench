
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_short ;
struct addrinfo {int ai_addrlen; int ai_addr; int ai_flags; } ;
typedef struct addrinfo sockaddr_u ;
typedef int name ;


 int INSIST (int) ;
 int NTP_PORT ;
 int REQUIRE (int ) ;
 int SET_PORT (struct addrinfo*,int ) ;
 int ZERO (struct addrinfo) ;
 int Z_AI_NUMERICHOST ;
 int freeaddrinfo (struct addrinfo*) ;
 int getaddrinfo (char const*,char*,struct addrinfo*,struct addrinfo**) ;
 int memcpy (struct addrinfo*,int ,int) ;
 int sscanf (char const*,char*,int *) ;
 char* strchr (char const*,char) ;
 int strlcpy (char*,char const*,int) ;
 int strlen (char const*) ;

int
decodenetnum(
 const char *num,
 sockaddr_u *netnum
 )
{
 struct addrinfo hints, *ai = ((void*)0);
 int err;
 u_short port;
 const char *cp;
 const char *port_str;
 char *pp;
 char *np;
 char name[80];

 REQUIRE(num != ((void*)0));

 if (strlen(num) >= sizeof(name)) {
  return 0;
 }

 port_str = ((void*)0);
 if ('[' != num[0]) {





  pp = strchr(num, ':');
  if (((void*)0) == pp)
   cp = num;
  else if (((void*)0) != strchr(pp + 1, ':'))
   cp = num;
  else {
   strlcpy(name, num, sizeof(name));
   cp = name;
   pp = strchr(cp, ':');
   *pp = '\0';
   port_str = pp + 1;
  }
 } else {
  cp = num + 1;
  np = name;
  while (*cp && ']' != *cp)
   *np++ = *cp++;
  *np = 0;
  if (']' == cp[0] && ':' == cp[1] && '\0' != cp[2])
   port_str = &cp[2];
  cp = name;
 }
 ZERO(hints);
 hints.ai_flags = Z_AI_NUMERICHOST;
 err = getaddrinfo(cp, "ntp", &hints, &ai);
 if (err != 0)
  return 0;
 INSIST(ai->ai_addrlen <= sizeof(*netnum));
 ZERO(*netnum);
 memcpy(netnum, ai->ai_addr, ai->ai_addrlen);
 freeaddrinfo(ai);
 if (((void*)0) == port_str || 1 != sscanf(port_str, "%hu", &port))
  port = NTP_PORT;
 SET_PORT(netnum, port);
 return 1;
}
