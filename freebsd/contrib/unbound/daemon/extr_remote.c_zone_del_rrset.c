
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dname; } ;
struct ub_packed_rrset_key {TYPE_1__ rk; } ;
struct packed_rrset_data {scalar_t__ ttl; } ;
struct lruhash_entry {scalar_t__ data; scalar_t__ key; } ;
struct del_info {scalar_t__ expired; int num_rrsets; int name; } ;


 scalar_t__ dname_subdomain_c (int ,int ) ;

__attribute__((used)) static void
zone_del_rrset(struct lruhash_entry* e, void* arg)
{

 struct del_info* inf = (struct del_info*)arg;
 struct ub_packed_rrset_key* k = (struct ub_packed_rrset_key*)e->key;
 if(dname_subdomain_c(k->rk.dname, inf->name)) {
  struct packed_rrset_data* d =
   (struct packed_rrset_data*)e->data;
  if(d->ttl > inf->expired) {
   d->ttl = inf->expired;
   inf->num_rrsets++;
  }
 }
}
