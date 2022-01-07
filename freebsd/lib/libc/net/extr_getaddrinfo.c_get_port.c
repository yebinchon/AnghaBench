
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_in6 {int sin6_port; } ;
struct sockaddr_in {int sin_port; } ;
struct servent {int s_port; } ;
struct addrinfo {int ai_family; int ai_socktype; int ai_flags; int ai_protocol; scalar_t__ ai_addr; } ;





 int AI_NUMERICSERV ;

 int EAI_NONAME ;
 int EAI_SERVICE ;
 int EAI_SOCKTYPE ;
 struct servent* getservbyname (char const*,char const*) ;
 int htons (int) ;
 int str2number (char const*,int*) ;

__attribute__((used)) static int
get_port(struct addrinfo *ai, const char *servname, int matchonly)
{
 const char *proto;
 struct servent *sp;
 int port, error;
 int allownumeric;

 if (servname == ((void*)0))
  return 0;
 switch (ai->ai_family) {
 case 137:

  return (0);
 case 139:

 case 138:

  break;
 default:
  return 0;
 }

 switch (ai->ai_socktype) {
 case 130:
  return EAI_SERVICE;
 case 131:
 case 128:
 case 129:
  allownumeric = 1;
  break;
 case 136:
  switch (ai->ai_family) {
  case 139:

  case 138:

   allownumeric = 1;
   break;
  default:
   allownumeric = 0;
   break;
  }
  break;
 default:
  return EAI_SOCKTYPE;
 }

 error = str2number(servname, &port);
 if (error == 0) {
  if (!allownumeric)
   return EAI_SERVICE;
  if (port < 0 || port > 65535)
   return EAI_SERVICE;
  port = htons(port);
 } else {
  if (ai->ai_flags & AI_NUMERICSERV)
   return EAI_NONAME;

  switch (ai->ai_protocol) {
  case 133:
   proto = "udp";
   break;
  case 134:
   proto = "tcp";
   break;
  case 135:
   proto = "sctp";
   break;
  case 132:
   proto = "udplite";
   break;
  default:
   proto = ((void*)0);
   break;
  }

  if ((sp = getservbyname(servname, proto)) == ((void*)0))
   return EAI_SERVICE;
  port = sp->s_port;
 }

 if (!matchonly) {
  switch (ai->ai_family) {
  case 139:
   ((struct sockaddr_in *)(void *)
       ai->ai_addr)->sin_port = port;
   break;






  }
 }

 return 0;
}
