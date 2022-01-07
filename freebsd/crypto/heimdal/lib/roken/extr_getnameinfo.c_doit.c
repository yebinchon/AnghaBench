
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct servent {int s_name; } ;
struct hostent {int dummy; } ;


 int EAI_NONAME ;
 int EAI_SYSTEM ;
 int NI_DGRAM ;
 int NI_NAMEREQD ;
 int NI_NOFQDN ;
 int NI_NUMERICHOST ;
 int NI_NUMERICSERV ;
 struct hostent* gethostbyaddr (void const*,size_t,int) ;
 struct servent* getservbyport (int,char const*) ;
 int hostent_find_fqdn (struct hostent*) ;
 int * inet_ntop (int,void const*,char*,size_t) ;
 int ntohs (int) ;
 int snprintf (char*,size_t,char*,int) ;
 char* strchr (char*,char) ;
 int strlcpy (char*,int ,size_t) ;

__attribute__((used)) static int
doit (int af,
      const void *addr,
      size_t addrlen,
      int port,
      char *host, size_t hostlen,
      char *serv, size_t servlen,
      int flags)
{
    if (host != ((void*)0)) {
 if (flags & NI_NUMERICHOST) {
     if (inet_ntop (af, addr, host, hostlen) == ((void*)0))
  return EAI_SYSTEM;
 } else {
     struct hostent *he = gethostbyaddr (addr,
      addrlen,
      af);
     if (he != ((void*)0)) {
  strlcpy (host, hostent_find_fqdn(he), hostlen);
  if (flags & NI_NOFQDN) {
      char *dot = strchr (host, '.');
      if (dot != ((void*)0))
   *dot = '\0';
  }
     } else if (flags & NI_NAMEREQD) {
  return EAI_NONAME;
     } else if (inet_ntop (af, addr, host, hostlen) == ((void*)0))
  return EAI_SYSTEM;
 }
    }

    if (serv != ((void*)0)) {
 if (flags & NI_NUMERICSERV) {
     snprintf (serv, servlen, "%u", ntohs(port));
 } else {
     const char *proto = "tcp";
     struct servent *se;

     if (flags & NI_DGRAM)
  proto = "udp";

     se = getservbyport (port, proto);
     if (se == ((void*)0)) {
  snprintf (serv, servlen, "%u", ntohs(port));
     } else {
  strlcpy (serv, se->s_name, servlen);
     }
 }
    }
    return 0;
}
