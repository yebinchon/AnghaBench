
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct server {scalar_t__ event_time; struct server* next_server; } ;


 scalar_t__ current_time ;
 struct server* sys_servers ;
 int transmit (struct server*) ;

void
timer(void)
{
 struct server *server;




 current_time++;






 for (server = sys_servers; server != ((void*)0);
      server = server->next_server) {
  if (server->event_time != 0
      && server->event_time <= current_time)
   transmit(server);
 }
}
