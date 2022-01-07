
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ratelimit_list_arg {scalar_t__ all; int ssl; int now; int infra; } ;
struct rate_key {int name; int namelen; } ;
struct rate_data {int dummy; } ;
struct lruhash_entry {scalar_t__ data; scalar_t__ key; } ;


 int dname_str (int ,char*) ;
 int infra_find_ratelimit (int ,int ,int ) ;
 int infra_rate_max (struct rate_data*,int ) ;
 int ssl_printf (int ,char*,char*,int,int) ;

__attribute__((used)) static void
rate_list(struct lruhash_entry* e, void* arg)
{
 struct ratelimit_list_arg* a = (struct ratelimit_list_arg*)arg;
 struct rate_key* k = (struct rate_key*)e->key;
 struct rate_data* d = (struct rate_data*)e->data;
 char buf[257];
 int lim = infra_find_ratelimit(a->infra, k->name, k->namelen);
 int max = infra_rate_max(d, a->now);
 if(a->all == 0) {
  if(max < lim)
   return;
 }
 dname_str(k->name, buf);
 ssl_printf(a->ssl, "%s %d limit %d\n", buf, max, lim);
}
