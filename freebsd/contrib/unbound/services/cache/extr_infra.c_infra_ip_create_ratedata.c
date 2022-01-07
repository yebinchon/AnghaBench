
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int time_t ;
struct TYPE_2__ {struct ip_rate_key* data; struct ip_rate_key* key; int hash; int lock; } ;
struct ip_rate_key {int* qps; TYPE_1__ entry; int * timestamp; int addrlen; int addr; } ;
struct ip_rate_data {int* qps; TYPE_1__ entry; int * timestamp; int addrlen; int addr; } ;
struct infra_cache {int client_ip_rates; } ;
struct comm_reply {int addrlen; int addr; } ;
typedef int hashvalue_type ;


 scalar_t__ calloc (int,int) ;
 int free (struct ip_rate_key*) ;
 int hash_addr (int *,int ,int ) ;
 int lock_rw_init (int *) ;
 int slabhash_insert (int ,int ,TYPE_1__*,struct ip_rate_key*,int *) ;

__attribute__((used)) static void infra_ip_create_ratedata(struct infra_cache* infra,
 struct comm_reply* repinfo, time_t timenow)
{
 hashvalue_type h = hash_addr(&(repinfo->addr),
 repinfo->addrlen, 0);
 struct ip_rate_key* k = (struct ip_rate_key*)calloc(1, sizeof(*k));
 struct ip_rate_data* d = (struct ip_rate_data*)calloc(1, sizeof(*d));
 if(!k || !d) {
  free(k);
  free(d);
  return;
 }
 k->addr = repinfo->addr;
 k->addrlen = repinfo->addrlen;
 lock_rw_init(&k->entry.lock);
 k->entry.hash = h;
 k->entry.key = k;
 k->entry.data = d;
 d->qps[0] = 1;
 d->timestamp[0] = timenow;
 slabhash_insert(infra->client_ip_rates, h, &k->entry, d, ((void*)0));
}
