
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nameserver {int base; } ;
typedef int evutil_socket_t ;


 int EVDNS_LOCK (int ) ;
 int EVDNS_UNLOCK (int ) ;
 int nameserver_send_probe (struct nameserver* const) ;

__attribute__((used)) static void
nameserver_prod_callback(evutil_socket_t fd, short events, void *arg) {
 struct nameserver *const ns = (struct nameserver *) arg;
 (void)fd;
 (void)events;

 EVDNS_LOCK(ns->base);
 nameserver_send_probe(ns);
 EVDNS_UNLOCK(ns->base);
}
