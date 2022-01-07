
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evdns_server_port {scalar_t__ choked; } ;
typedef int evutil_socket_t ;


 int EVDNS_LOCK (struct evdns_server_port*) ;
 int EVDNS_UNLOCK (struct evdns_server_port*) ;
 short EV_READ ;
 short EV_WRITE ;
 int server_port_flush (struct evdns_server_port*) ;
 int server_port_read (struct evdns_server_port*) ;

__attribute__((used)) static void
server_port_ready_callback(evutil_socket_t fd, short events, void *arg) {
 struct evdns_server_port *port = (struct evdns_server_port *) arg;
 (void) fd;

 EVDNS_LOCK(port);
 if (events & EV_WRITE) {
  port->choked = 0;
  server_port_flush(port);
 }
 if (events & EV_READ) {
  server_port_read(port);
 }
 EVDNS_UNLOCK(port);
}
