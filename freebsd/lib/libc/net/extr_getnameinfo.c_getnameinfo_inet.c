
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u_short ;
typedef int u_int32_t ;
struct TYPE_7__ {int * s6_addr; } ;
struct sockaddr_in6 {TYPE_2__ sin6_addr; } ;
struct TYPE_6__ {int s_addr; } ;
struct sockaddr_in {TYPE_1__ sin_addr; int sin_port; } ;
struct sockaddr {int sa_family; } ;
struct servent {char* s_name; } ;
struct hostent {char* h_name; } ;
struct afd {int a_off; int a_af; int a_addrlen; } ;
typedef int socklen_t ;
typedef int numserv ;
typedef int numaddr ;




 int EAI_MEMORY ;
 int EAI_NONAME ;
 int EAI_SYSTEM ;
 int IN6_IS_ADDR_LINKLOCAL (TYPE_2__*) ;
 int IN6_IS_ADDR_LOOPBACK (TYPE_2__*) ;
 int IN6_IS_ADDR_MULTICAST (TYPE_2__*) ;
 int IN6_IS_ADDR_V4MAPPED (TYPE_2__*) ;
 int IN_EXPERIMENTAL (int ) ;
 int IN_MULTICAST (int ) ;
 int IN_ZERONET (int ) ;
 int NI_DGRAM ;
 int NI_NAMEREQD ;
 int NI_NOFQDN ;
 int NI_NUMERICHOST ;
 int NI_NUMERICSERV ;
 int freehostent (struct hostent*) ;
 struct hostent* getipnodebyaddr (char const*,int ,int ,int*) ;
 struct servent* getservbyport (int ,char*) ;
 int * inet_ntop (int ,char const*,char*,size_t) ;
 int ip6_parsenumeric (struct sockaddr const*,char const*,char*,size_t,int) ;
 int ntohl (int ) ;
 int ntohs (int ) ;
 int snprintf (char*,int,char*,int) ;
 char* strchr (char*,char) ;
 int strlcpy (char*,char*,size_t) ;
 int strlen (char*) ;

__attribute__((used)) static int
getnameinfo_inet(const struct afd *afd,
    const struct sockaddr *sa, socklen_t salen,
    char *host, size_t hostlen, char *serv, size_t servlen,
    int flags)
{
 struct servent *sp;
 struct hostent *hp;
 u_short port;
 const char *addr;
 u_int32_t v4a;
 int h_error;
 char numserv[512];
 char numaddr[512];


 port = ((const struct sockaddr_in *)sa)->sin_port;
 addr = (const char *)sa + afd->a_off;

 if (serv == ((void*)0) || servlen == 0) {






 } else {
  if (flags & NI_NUMERICSERV)
   sp = ((void*)0);
  else {
   sp = getservbyport(port,
    (flags & NI_DGRAM) ? "udp" : "tcp");
  }
  if (sp) {
   if (strlen(sp->s_name) + 1 > servlen)
    return EAI_MEMORY;
   strlcpy(serv, sp->s_name, servlen);
  } else {
   snprintf(numserv, sizeof(numserv), "%u", ntohs(port));
   if (strlen(numserv) + 1 > servlen)
    return EAI_MEMORY;
   strlcpy(serv, numserv, servlen);
  }
 }

 switch (sa->sa_family) {
 case 129:
  v4a = (u_int32_t)
      ntohl(((const struct sockaddr_in *)sa)->sin_addr.s_addr);
  if (IN_MULTICAST(v4a) || IN_EXPERIMENTAL(v4a) ||
      IN_ZERONET(v4a))
   flags |= NI_NUMERICHOST;
  break;
 }
 if (host == ((void*)0) || hostlen == 0) {






 } else if (flags & NI_NUMERICHOST) {
  size_t numaddrlen;


  if (flags & NI_NAMEREQD)
   return EAI_NONAME;

  switch(afd->a_af) {
  default:
   if (inet_ntop(afd->a_af, addr, numaddr, sizeof(numaddr))
       == ((void*)0))
    return EAI_SYSTEM;
   numaddrlen = strlen(numaddr);
   if (numaddrlen + 1 > hostlen)
    return EAI_MEMORY;
   strlcpy(host, numaddr, hostlen);
   break;
  }
 } else {
  hp = getipnodebyaddr(addr, afd->a_addrlen, afd->a_af, &h_error);

  if (hp) {
   if (strlen(hp->h_name) + 1 > hostlen) {
    freehostent(hp);
    return EAI_MEMORY;
   }
   strlcpy(host, hp->h_name, hostlen);
   freehostent(hp);
  } else {
   if (flags & NI_NAMEREQD)
    return EAI_NONAME;
   switch(afd->a_af) {
   default:
    if (inet_ntop(afd->a_af, addr, host,
        hostlen) == ((void*)0))
     return EAI_SYSTEM;
    break;
   }
  }
 }
 return(0);
}
