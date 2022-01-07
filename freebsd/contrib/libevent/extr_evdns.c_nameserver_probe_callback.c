
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nameserver {int base; int * probe_request; } ;


 int DNS_ERR_CANCEL ;
 int DNS_ERR_NONE ;
 int DNS_ERR_NOTEXIST ;
 int EVDNS_LOCK (int ) ;
 int EVDNS_UNLOCK (int ) ;
 int nameserver_probe_failed (struct nameserver* const) ;
 int nameserver_up (struct nameserver* const) ;

__attribute__((used)) static void
nameserver_probe_callback(int result, char type, int count, int ttl, void *addresses, void *arg) {
 struct nameserver *const ns = (struct nameserver *) arg;
 (void) type;
 (void) count;
 (void) ttl;
 (void) addresses;

 if (result == DNS_ERR_CANCEL) {



  return;
 }

 EVDNS_LOCK(ns->base);
 ns->probe_request = ((void*)0);
 if (result == DNS_ERR_NONE || result == DNS_ERR_NOTEXIST) {

  nameserver_up(ns);
 } else {
  nameserver_probe_failed(ns);
 }
 EVDNS_UNLOCK(ns->base);
}
