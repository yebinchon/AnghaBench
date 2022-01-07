
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef int time_t ;
struct TYPE_2__ {struct rate_key* data; struct rate_key* key; int hash; int lock; } ;
struct rate_key {size_t namelen; int* qps; TYPE_1__ entry; int * timestamp; int name; } ;
struct rate_data {size_t namelen; int* qps; TYPE_1__ entry; int * timestamp; int name; } ;
struct infra_cache {int domain_rates; } ;
typedef int hashvalue_type ;


 scalar_t__ calloc (int,int) ;
 int dname_query_hash (int *,int) ;
 int free (struct rate_key*) ;
 int lock_rw_init (int *) ;
 int memdup (int *,size_t) ;
 int slabhash_insert (int ,int ,TYPE_1__*,struct rate_key*,int *) ;

__attribute__((used)) static void infra_create_ratedata(struct infra_cache* infra,
 uint8_t* name, size_t namelen, time_t timenow)
{
 hashvalue_type h = dname_query_hash(name, 0xab);
 struct rate_key* k = (struct rate_key*)calloc(1, sizeof(*k));
 struct rate_data* d = (struct rate_data*)calloc(1, sizeof(*d));
 if(!k || !d) {
  free(k);
  free(d);
  return;
 }
 k->namelen = namelen;
 k->name = memdup(name, namelen);
 if(!k->name) {
  free(k);
  free(d);
  return;
 }
 lock_rw_init(&k->entry.lock);
 k->entry.hash = h;
 k->entry.key = k;
 k->entry.data = d;
 d->qps[0] = 1;
 d->timestamp[0] = timenow;
 slabhash_insert(infra->domain_rates, h, &k->entry, d, ((void*)0));
}
