
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
struct servent {long s_port; } ;
struct in_addr {int s_addr; } ;
struct hostent {scalar_t__* h_addr_list; scalar_t__* h_name; } ;
struct addrinfo {int ai_flags; struct addrinfo* ai_next; } ;


 int AI_NUMERICHOST ;
 int AI_PASSIVE ;
 int EAI_MEMORY ;
 int EAI_NODATA ;
 int EAI_NONAME ;
 int freeaddrinfo (struct addrinfo*) ;
 struct hostent* gethostbyname (char const*) ;
 struct servent* getservbyname (char const*,int *) ;
 int htonl (int) ;
 long htons (long) ;
 scalar_t__ inet_aton (char const*,struct in_addr*) ;
 struct addrinfo* malloc_ai (long,int ,struct addrinfo const*) ;
 long strtol (char const*,char**,int) ;

int
getaddrinfo(const char *hostname, const char *servname,
    const struct addrinfo *hints, struct addrinfo **res)
{
 struct hostent *hp;
 struct servent *sp;
 struct in_addr in;
 int i;
 long int port;
 u_long addr;

 port = 0;
 if (servname != ((void*)0)) {
  char *cp;

  port = strtol(servname, &cp, 10);
  if (port > 0 && port <= 65535 && *cp == '\0')
   port = htons(port);
  else if ((sp = getservbyname(servname, ((void*)0))) != ((void*)0))
   port = sp->s_port;
  else
   port = 0;
 }

 if (hints && hints->ai_flags & AI_PASSIVE) {
  addr = htonl(0x00000000);
  if (hostname && inet_aton(hostname, &in) != 0)
   addr = in.s_addr;
  *res = malloc_ai(port, addr, hints);
  if (*res == ((void*)0))
   return (EAI_MEMORY);
  return (0);
 }

 if (!hostname) {
  *res = malloc_ai(port, htonl(0x7f000001), hints);
  if (*res == ((void*)0))
   return (EAI_MEMORY);
  return (0);
 }

 if (inet_aton(hostname, &in)) {
  *res = malloc_ai(port, in.s_addr, hints);
  if (*res == ((void*)0))
   return (EAI_MEMORY);
  return (0);
 }


 if (hints && hints->ai_flags & AI_NUMERICHOST)
  return (EAI_NONAME);

 hp = gethostbyname(hostname);
 if (hp && hp->h_name && hp->h_name[0] && hp->h_addr_list[0]) {
  struct addrinfo *cur, *prev;

  cur = prev = *res = ((void*)0);
  for (i = 0; hp->h_addr_list[i]; i++) {
   struct in_addr *in = (struct in_addr *)hp->h_addr_list[i];

   cur = malloc_ai(port, in->s_addr, hints);
   if (cur == ((void*)0)) {
    if (*res != ((void*)0))
     freeaddrinfo(*res);
    return (EAI_MEMORY);
   }
   if (prev)
    prev->ai_next = cur;
   else
    *res = cur;

   prev = cur;
  }
  return (0);
 }

 return (EAI_NODATA);
}
