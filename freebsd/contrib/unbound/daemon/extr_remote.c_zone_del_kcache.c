
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lruhash_entry {scalar_t__ data; scalar_t__ key; } ;
struct key_entry_key {int name; } ;
struct key_entry_data {scalar_t__ ttl; } ;
struct del_info {scalar_t__ expired; int num_keys; int name; } ;


 scalar_t__ dname_subdomain_c (int ,int ) ;

__attribute__((used)) static void
zone_del_kcache(struct lruhash_entry* e, void* arg)
{

 struct del_info* inf = (struct del_info*)arg;
 struct key_entry_key* k = (struct key_entry_key*)e->key;
 if(dname_subdomain_c(k->name, inf->name)) {
  struct key_entry_data* d = (struct key_entry_data*)e->data;
  if(d->ttl > inf->expired) {
   d->ttl = inf->expired;
   inf->num_keys++;
  }
 }
}
