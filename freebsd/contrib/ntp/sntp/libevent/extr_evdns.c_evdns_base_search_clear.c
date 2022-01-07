
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evdns_base {int dummy; } ;


 int EVDNS_LOCK (struct evdns_base*) ;
 int EVDNS_UNLOCK (struct evdns_base*) ;
 int search_postfix_clear (struct evdns_base*) ;

void
evdns_base_search_clear(struct evdns_base *base)
{
 EVDNS_LOCK(base);
 search_postfix_clear(base);
 EVDNS_UNLOCK(base);
}
