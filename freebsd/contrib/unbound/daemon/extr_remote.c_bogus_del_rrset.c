
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct packed_rrset_data {scalar_t__ security; int ttl; } ;
struct lruhash_entry {scalar_t__ data; } ;
struct del_info {int num_rrsets; int expired; } ;


 scalar_t__ sec_status_bogus ;

__attribute__((used)) static void
bogus_del_rrset(struct lruhash_entry* e, void* arg)
{

 struct del_info* inf = (struct del_info*)arg;
 struct packed_rrset_data* d = (struct packed_rrset_data*)e->data;
 if(d->security == sec_status_bogus) {
  d->ttl = inf->expired;
  inf->num_rrsets++;
 }
}
