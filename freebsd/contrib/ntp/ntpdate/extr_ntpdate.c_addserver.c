
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct addrinfo {int ai_addrlen; int ai_addr; struct addrinfo* ai_next; int ai_socktype; int ai_family; } ;
struct server {struct server* next_server; scalar_t__ event_time; struct addrinfo srcadr; } ;
typedef struct addrinfo sockaddr_u ;
typedef int service ;
typedef int addr ;


 int EAI_AGAIN ;
 int EAI_FAIL ;
 int INSIST (int) ;
 int LOG_ERR ;
 int SOCK_DGRAM ;
 int ZERO (struct addrinfo) ;
 int ai_fam_templ ;
 scalar_t__ debug ;
 struct server* emalloc_zero (int) ;
 int exit (int) ;
 int fprintf (int ,char*,char*,...) ;
 int freeaddrinfo (struct addrinfo*) ;
 char* gai_strerror (int) ;
 int getaddrinfo (char*,char*,struct addrinfo*,struct addrinfo**) ;
 scalar_t__ is_reachable (struct addrinfo*) ;
 int memcpy (struct addrinfo*,int ,int) ;
 int msyslog (int ,char*,char*,...) ;
 int printf (char*,char*,char*) ;
 int stderr ;
 char* stohost (struct addrinfo*) ;
 int strlcpy (char*,char*,int) ;
 scalar_t__ sys_numservers ;
 struct server* sys_servers ;

__attribute__((used)) static void
addserver(
 char *serv
 )
{
 register struct server *server;

 struct addrinfo *addrResult, *ptr;

 struct addrinfo hints;

 int error;

 char service[5];
 sockaddr_u addr;

 strlcpy(service, "ntp", sizeof(service));


 ZERO(hints);
 hints.ai_family = ai_fam_templ;
 hints.ai_socktype = SOCK_DGRAM;






 error = getaddrinfo(serv, service, &hints, &addrResult);
 if (error != 0) {

  if (error == EAI_FAIL || error == EAI_AGAIN){



   fprintf(stderr, "Exiting, name server cannot be used: %s (%d)",
    gai_strerror(error), error);
   msyslog(LOG_ERR, "name server cannot be used: %s (%d)",
    gai_strerror(error), error);
   exit(1);
  }
  fprintf(stderr, "Error resolving %s: %s (%d)\n", serv,
   gai_strerror(error), error);
  msyslog(LOG_ERR, "Can't find host %s: %s (%d)", serv,
   gai_strerror(error), error);
  return;
 }
 for (ptr = addrResult; ptr != ((void*)0); ptr = ptr->ai_next) {
  ZERO(addr);
  INSIST(ptr->ai_addrlen <= sizeof(addr));
  memcpy(&addr, ptr->ai_addr, ptr->ai_addrlen);
  if (is_reachable(&addr)) {
   server = emalloc_zero(sizeof(*server));
   memcpy(&server->srcadr, ptr->ai_addr, ptr->ai_addrlen);
   server->event_time = ++sys_numservers;
   if (sys_servers == ((void*)0))
    sys_servers = server;
   else {
    struct server *sp;

    for (sp = sys_servers; sp->next_server != ((void*)0);
         sp = sp->next_server)
                ;
    sp->next_server = server;
   }
  }
 }

 freeaddrinfo(addrResult);
}
