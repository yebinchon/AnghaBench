
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evdns_server_port {scalar_t__ refcnt; int closing; } ;


 int EVDNS_LOCK (struct evdns_server_port*) ;
 int EVDNS_UNLOCK (struct evdns_server_port*) ;
 int server_port_free (struct evdns_server_port*) ;

void
evdns_close_server_port(struct evdns_server_port *port)
{
 EVDNS_LOCK(port);
 if (--port->refcnt == 0) {
  EVDNS_UNLOCK(port);
  server_port_free(port);
 } else {
  port->closing = 1;
 }
}
