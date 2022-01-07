
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lruhash_entry {scalar_t__ data; scalar_t__ key; } ;
struct ip_ratelimit_list_arg {scalar_t__ all; int ssl; int now; } ;
struct ip_rate_key {int addrlen; int addr; } ;
struct ip_rate_data {int dummy; } ;
typedef int ip ;


 int addr_to_str (int *,int ,char*,int) ;
 int infra_ip_ratelimit ;
 int infra_rate_max (struct ip_rate_data*,int ) ;
 int ssl_printf (int ,char*,char*,int,int) ;

__attribute__((used)) static void
ip_rate_list(struct lruhash_entry* e, void* arg)
{
 char ip[128];
 struct ip_ratelimit_list_arg* a = (struct ip_ratelimit_list_arg*)arg;
 struct ip_rate_key* k = (struct ip_rate_key*)e->key;
 struct ip_rate_data* d = (struct ip_rate_data*)e->data;
 int lim = infra_ip_ratelimit;
 int max = infra_rate_max(d, a->now);
 if(a->all == 0) {
  if(max < lim)
   return;
 }
 addr_to_str(&k->addr, k->addrlen, ip, sizeof(ip));
 ssl_printf(a->ssl, "%s %d limit %d\n", ip, max, lim);
}
