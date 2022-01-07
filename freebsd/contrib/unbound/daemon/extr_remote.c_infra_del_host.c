
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lruhash_entry {scalar_t__ data; scalar_t__ key; } ;
struct infra_key {int addrlen; int addr; } ;
struct infra_data {scalar_t__ ttl; int rtt; scalar_t__ timeout_other; scalar_t__ timeout_AAAA; scalar_t__ timeout_A; scalar_t__ probedelay; } ;
struct del_info {scalar_t__ expired; int num_keys; int addrlen; int addr; } ;


 int rtt_init (int *) ;
 scalar_t__ sockaddr_cmp (int *,int ,int *,int ) ;

__attribute__((used)) static void
infra_del_host(struct lruhash_entry* e, void* arg)
{

 struct del_info* inf = (struct del_info*)arg;
 struct infra_key* k = (struct infra_key*)e->key;
 if(sockaddr_cmp(&inf->addr, inf->addrlen, &k->addr, k->addrlen) == 0) {
  struct infra_data* d = (struct infra_data*)e->data;
  d->probedelay = 0;
  d->timeout_A = 0;
  d->timeout_AAAA = 0;
  d->timeout_other = 0;
  rtt_init(&d->rtt);
  if(d->ttl > inf->expired) {
   d->ttl = inf->expired;
   inf->num_keys++;
  }
 }
}
