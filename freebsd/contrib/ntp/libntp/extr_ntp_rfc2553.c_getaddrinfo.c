
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_in6 {unsigned short sin6_port; } ;
struct sockaddr_in {unsigned short sin_port; } ;
struct servent {int s_port; int s_proto; } ;
struct addrinfo {int ai_flags; int ai_family; int ai_socktype; int ai_protocol; scalar_t__ ai_addr; } ;






 int EAI_FAMILY ;
 int EAI_MEMORY ;
 int EAI_NONAME ;
 int EAI_SERVICE ;
 int EAI_SOCKTYPE ;



 struct addrinfo* calloc (int,int) ;
 int do_nodename (char const*,struct addrinfo*,struct addrinfo const*) ;
 int freeaddrinfo (struct addrinfo*) ;
 struct servent* getservbyname (char const*,char const*) ;
 int htons (unsigned short) ;
 scalar_t__ strcmp (int ,char*) ;
 int strtol (char const*,char**,int) ;

int
getaddrinfo (const char *nodename, const char *servname,
 const struct addrinfo *hints, struct addrinfo **res)
{
 int rval;
 struct servent *sp;
 struct addrinfo *ai = ((void*)0);
 int port;
 const char *proto = ((void*)0);
 int family, socktype, flags, protocol;





 if (nodename == ((void*)0) && servname == ((void*)0))
  return (EAI_NONAME);

 ai = calloc(sizeof(struct addrinfo), 1);
 if (ai == ((void*)0))
  return (EAI_MEMORY);




 if (hints != ((void*)0)) {
  ai->ai_flags = hints->ai_flags;
  ai->ai_family = hints->ai_family;
  ai->ai_socktype = hints->ai_socktype;
  ai->ai_protocol = hints->ai_protocol;

  family = hints->ai_family;
  socktype = hints->ai_socktype;
  protocol = hints->ai_protocol;
  flags = hints->ai_flags;

  switch (family) {
  case 131:
   switch (hints->ai_socktype) {
   case 128:
    proto = "tcp";
    break;
   case 130:
    proto = "udp";
    break;
   }
   break;
  case 134:
  case 133:
   switch (hints->ai_socktype) {
   case 0:
    break;
   case 128:
    proto = "tcp";
    break;
   case 130:
    proto = "udp";
    break;
   case 129:
    break;
   default:
    return (EAI_SOCKTYPE);
   }
   break;

  case 132:
   switch (hints->ai_socktype) {
   case 0:
    break;
   case 128:
    break;
   case 130:
    break;
   default:
    return (EAI_SOCKTYPE);
   }
   break;

  default:
   return (EAI_FAMILY);
  }
 } else {
  protocol = 0;
  family = 0;
  socktype = 0;
  flags = 0;
 }

 rval = do_nodename(nodename, ai, hints);
 if (rval != 0) {
  freeaddrinfo(ai);
  return (rval);
 }






 if (servname != ((void*)0)) {
  char *e;

  port = strtol(servname, &e, 10);
  if (*e == '\0') {
   if (socktype == 0)
    return (EAI_SOCKTYPE);
   if (port < 0 || port > 65535)
    return (EAI_SERVICE);
   port = htons((unsigned short) port);
  } else {
   sp = getservbyname(servname, proto);
   if (sp == ((void*)0))
    return (EAI_SERVICE);
   port = sp->s_port;
   if (socktype == 0) {
    if (strcmp(sp->s_proto, "tcp") == 0)
     socktype = 128;
    else if (strcmp(sp->s_proto, "udp") == 0)
     socktype = 130;
   }
  }
 } else
  port = 0;





 if (ai->ai_family == 134)
  ((struct sockaddr_in *)ai->ai_addr)->sin_port = (unsigned short) port;
 else if (ai->ai_family == 133)
  ((struct sockaddr_in6 *)ai->ai_addr)->sin6_port = (unsigned short) port;
 *res = ai;
 return (0);
}
