
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef struct nameserver {struct nameserver const* next; } const nameserver ;
struct evdns_base {struct nameserver const* server_head; } ;


 int EVDNS_LOCK (struct evdns_base*) ;
 int EVDNS_UNLOCK (struct evdns_base*) ;

int
evdns_base_count_nameservers(struct evdns_base *base)
{
 const struct nameserver *server;
 int n = 0;

 EVDNS_LOCK(base);
 server = base->server_head;
 if (!server)
  goto done;
 do {
  ++n;
  server = server->next;
 } while (server != base->server_head);
done:
 EVDNS_UNLOCK(base);
 return n;
}
