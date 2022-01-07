
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct listenaddr {char* rdomain; struct addrinfo* addrs; } ;
struct addrinfo {scalar_t__ ai_family; int ai_addrlen; int ai_addr; struct addrinfo* ai_next; } ;
typedef int port ;
typedef int addr ;


 scalar_t__ AF_INET6 ;
 int NI_MAXHOST ;
 int NI_MAXSERV ;
 int NI_NUMERICHOST ;
 int NI_NUMERICSERV ;
 int error (char*,int ) ;
 int free (char*) ;
 int getnameinfo (int ,int ,char*,int,char*,int,int) ;
 int ssh_gai_strerror (int) ;
 int xasprintf (char**,char*,char*,char*,char*,char*,char*) ;
 char* xstrdup (char*) ;

__attribute__((used)) static char *
format_listen_addrs(struct listenaddr *la)
{
 int r;
 struct addrinfo *ai;
 char addr[NI_MAXHOST], port[NI_MAXSERV];
 char *laddr1 = xstrdup(""), *laddr2 = ((void*)0);






 for (ai = la->addrs; ai; ai = ai->ai_next) {
  if ((r = getnameinfo(ai->ai_addr, ai->ai_addrlen, addr,
      sizeof(addr), port, sizeof(port),
      NI_NUMERICHOST|NI_NUMERICSERV)) != 0) {
   error("getnameinfo: %.100s", ssh_gai_strerror(r));
   continue;
  }
  laddr2 = laddr1;
  if (ai->ai_family == AF_INET6) {
   xasprintf(&laddr1, "listenaddress [%s]:%s%s%s\n%s",
       addr, port,
       la->rdomain == ((void*)0) ? "" : " rdomain ",
       la->rdomain == ((void*)0) ? "" : la->rdomain,
       laddr2);
  } else {
   xasprintf(&laddr1, "listenaddress %s:%s%s%s\n%s",
       addr, port,
       la->rdomain == ((void*)0) ? "" : " rdomain ",
       la->rdomain == ((void*)0) ? "" : la->rdomain,
       laddr2);
  }
  free(laddr2);
 }
 return laddr1;
}
