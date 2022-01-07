
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_in6 {int sin6_addr; } ;
struct addrinfo {scalar_t__ ai_family; int ai_flags; scalar_t__ ai_protocol; int ai_socktype; struct addrinfo* ai_next; scalar_t__ ai_addr; } ;
typedef int hints ;
typedef int FILE ;


 scalar_t__ AF_INET6 ;
 int AI_CANONNAME ;
 int AI_NUMERICHOST ;
 int AI_V4MAPPED ;
 scalar_t__ IN6_IS_ADDR_V4MAPPED (int *) ;
 int SOCK_DGRAM ;
 int _PATH_HOSTS ;
 char* fgets (char*,int,int *) ;
 int * fopen (int ,char*) ;
 int freeaddrinfo (struct addrinfo*) ;
 scalar_t__ get_canonname (struct addrinfo const*,struct addrinfo*,char*) ;
 int getaddrinfo (char const*,char*,struct addrinfo*,struct addrinfo**) ;
 int memset (struct addrinfo*,int ,int) ;
 scalar_t__ strcasecmp (char const*,char*) ;
 char* strpbrk (char*,char*) ;

__attribute__((used)) static struct addrinfo *
_gethtent(FILE **hostf, const char *name, const struct addrinfo *pai)
{
 char *p;
 char *cp, *tname, *cname;
 struct addrinfo hints, *res0, *res;
 int error;
 const char *addr;
 char hostbuf[8*1024];

 if (!*hostf && !(*hostf = fopen(_PATH_HOSTS, "re")))
  return (((void*)0));
again:
 if (!(p = fgets(hostbuf, sizeof hostbuf, *hostf)))
  return (((void*)0));
 if (*p == '#')
  goto again;
 cp = strpbrk(p, "#\n");
 if (cp != ((void*)0))
  *cp = '\0';
 if (!(cp = strpbrk(p, " \t")))
  goto again;
 *cp++ = '\0';
 addr = p;
 cname = ((void*)0);

 while (cp && *cp) {
  if (*cp == ' ' || *cp == '\t') {
   cp++;
   continue;
  }
  tname = cp;
  if (cname == ((void*)0))
   cname = cp;
  if ((cp = strpbrk(cp, " \t")) != ((void*)0))
   *cp++ = '\0';
  if (strcasecmp(name, tname) == 0)
   goto found;
 }
 goto again;

found:

 memset(&hints, 0, sizeof(hints));
 hints.ai_family = pai->ai_family;
 hints.ai_socktype = SOCK_DGRAM;
 hints.ai_protocol = 0;
 hints.ai_flags = AI_NUMERICHOST;
 if (pai->ai_family == AF_INET6 &&
     (pai->ai_flags & AI_V4MAPPED) == AI_V4MAPPED)
  hints.ai_flags |= AI_V4MAPPED;
 error = getaddrinfo(addr, "0", &hints, &res0);
 if (error)
  goto again;
 for (res = res0; res; res = res->ai_next) {

  res->ai_flags = pai->ai_flags;
  res->ai_socktype = pai->ai_socktype;
  res->ai_protocol = pai->ai_protocol;

  if (pai->ai_flags & AI_CANONNAME) {
   if (get_canonname(pai, res, cname) != 0) {
    freeaddrinfo(res0);
    goto again;
   }
  }
 }
 return res0;
}
