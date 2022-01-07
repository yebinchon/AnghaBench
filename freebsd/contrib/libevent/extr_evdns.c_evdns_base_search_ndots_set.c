
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct evdns_base {TYPE_1__* global_search_state; } ;
struct TYPE_2__ {int ndots; } ;


 int EVDNS_LOCK (struct evdns_base*) ;
 int EVDNS_UNLOCK (struct evdns_base*) ;
 TYPE_1__* search_state_new () ;

void
evdns_base_search_ndots_set(struct evdns_base *base, const int ndots) {
 EVDNS_LOCK(base);
 if (!base->global_search_state) base->global_search_state = search_state_new();
 if (base->global_search_state)
  base->global_search_state->ndots = ndots;
 EVDNS_UNLOCK(base);
}
