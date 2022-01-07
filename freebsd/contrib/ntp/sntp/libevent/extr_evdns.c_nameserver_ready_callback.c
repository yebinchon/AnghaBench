
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nameserver {int base; scalar_t__ choked; } ;
typedef int evutil_socket_t ;


 int EVDNS_LOCK (int ) ;
 int EVDNS_UNLOCK (int ) ;
 short EV_READ ;
 short EV_WRITE ;
 int evdns_transmit (int ) ;
 int nameserver_read (struct nameserver*) ;
 int nameserver_write_waiting (struct nameserver*,int ) ;

__attribute__((used)) static void
nameserver_ready_callback(evutil_socket_t fd, short events, void *arg) {
 struct nameserver *ns = (struct nameserver *) arg;
 (void)fd;

 EVDNS_LOCK(ns->base);
 if (events & EV_WRITE) {
  ns->choked = 0;
  if (!evdns_transmit(ns->base)) {
   nameserver_write_waiting(ns, 0);
  }
 }
 if (events & EV_READ) {
  nameserver_read(ns);
 }
 EVDNS_UNLOCK(ns->base);
}
