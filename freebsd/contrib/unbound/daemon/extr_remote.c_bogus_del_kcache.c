
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lruhash_entry {scalar_t__ data; } ;
struct key_entry_data {int ttl; scalar_t__ isbad; } ;
struct del_info {int num_keys; int expired; } ;



__attribute__((used)) static void
bogus_del_kcache(struct lruhash_entry* e, void* arg)
{

 struct del_info* inf = (struct del_info*)arg;
 struct key_entry_data* d = (struct key_entry_data*)e->data;
 if(d->isbad) {
  d->ttl = inf->expired;
  inf->num_keys++;
 }
}
