
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hosts_entry {int hostname; } ;
struct evdns_base {int hostsdb; } ;


 struct hosts_entry* TAILQ_FIRST (int *) ;
 struct hosts_entry* TAILQ_NEXT (struct hosts_entry*,int ) ;
 int evutil_ascii_strcasecmp (int ,char const*) ;
 int next ;

__attribute__((used)) static struct hosts_entry *
find_hosts_entry(struct evdns_base *base, const char *hostname,
    struct hosts_entry *find_after)
{
 struct hosts_entry *e;

 if (find_after)
  e = TAILQ_NEXT(find_after, next);
 else
  e = TAILQ_FIRST(&base->hostsdb);

 for (; e; e = TAILQ_NEXT(e, next)) {
  if (!evutil_ascii_strcasecmp(e->hostname, hostname))
   return e;
 }
 return ((void*)0);
}
