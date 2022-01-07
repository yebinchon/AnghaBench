
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evdns_base {int dummy; } ;


 int EVDNS_LOCK (struct evdns_base*) ;
 int EVDNS_UNLOCK (struct evdns_base*) ;
 int search_postfix_add (struct evdns_base*,char const*) ;

void
evdns_base_search_add(struct evdns_base *base, const char *domain) {
 EVDNS_LOCK(base);
 search_postfix_add(base, domain);
 EVDNS_UNLOCK(base);
}
