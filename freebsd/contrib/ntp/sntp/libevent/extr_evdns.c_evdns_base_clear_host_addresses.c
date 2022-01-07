
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hosts_entry {int dummy; } ;
struct evdns_base {int hostsdb; } ;


 int EVDNS_LOCK (struct evdns_base*) ;
 int EVDNS_UNLOCK (struct evdns_base*) ;
 struct hosts_entry* TAILQ_FIRST (int *) ;
 int TAILQ_REMOVE (int *,struct hosts_entry*,int ) ;
 int mm_free (struct hosts_entry*) ;
 int next ;

void
evdns_base_clear_host_addresses(struct evdns_base *base)
{
 struct hosts_entry *victim;
 EVDNS_LOCK(base);
 while ((victim = TAILQ_FIRST(&base->hostsdb))) {
  TAILQ_REMOVE(&base->hostsdb, victim, next);
  mm_free(victim);
 }
 EVDNS_UNLOCK(base);
}
