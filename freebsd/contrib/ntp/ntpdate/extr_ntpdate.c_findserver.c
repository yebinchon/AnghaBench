
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct server {scalar_t__ event_time; struct server* next_server; int srcadr; } ;
typedef int sockaddr_u ;


 scalar_t__ AF (int *) ;
 scalar_t__ IS_MCAST (int *) ;
 scalar_t__ NTP_PORT ;
 scalar_t__ SOCK_EQ (int *,int *) ;
 scalar_t__ SRCPORT (int *) ;
 int complete_servers ;
 struct server* emalloc_zero (int) ;
 scalar_t__ sys_numservers ;
 struct server* sys_servers ;
 int transmit (struct server*) ;

__attribute__((used)) static struct server *
findserver(
 sockaddr_u *addr
 )
{
 struct server *server;
 struct server *mc_server;

 mc_server = ((void*)0);
 if (SRCPORT(addr) != NTP_PORT)
  return 0;

 for (server = sys_servers; server != ((void*)0);
      server = server->next_server) {
  if (SOCK_EQ(addr, &server->srcadr))
   return server;

  if (AF(addr) == AF(&server->srcadr)) {
   if (IS_MCAST(&server->srcadr))
    mc_server = server;
  }
 }

 if (mc_server != ((void*)0)) {

  struct server *sp;

  if (mc_server->event_time != 0) {
   mc_server->event_time = 0;
   complete_servers++;
  }

  server = emalloc_zero(sizeof(*server));

  server->srcadr = *addr;

  server->event_time = ++sys_numservers;

  for (sp = sys_servers; sp->next_server != ((void*)0);
       sp = sp->next_server)
              ;
  sp->next_server = server;
  transmit(server);
 }
 return ((void*)0);
}
