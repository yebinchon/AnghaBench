
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct lruhash_entry {int dummy; } ;
struct TYPE_2__ {int hash; } ;
struct ip_rate_key {TYPE_1__ entry; int addrlen; int addr; } ;
struct infra_cache {int client_ip_rates; } ;
struct comm_reply {int addrlen; int addr; } ;
typedef int key ;
typedef int hashvalue_type ;


 int hash_addr (int *,int ,int ) ;
 int memset (struct ip_rate_key*,int ,int) ;
 struct lruhash_entry* slabhash_lookup (int ,int ,struct ip_rate_key*,int) ;

__attribute__((used)) static struct lruhash_entry* infra_find_ip_ratedata(struct infra_cache* infra,
 struct comm_reply* repinfo, int wr)
{
 struct ip_rate_key key;
 hashvalue_type h = hash_addr(&(repinfo->addr),
  repinfo->addrlen, 0);
 memset(&key, 0, sizeof(key));
 key.addr = repinfo->addr;
 key.addrlen = repinfo->addrlen;
 key.entry.hash = h;
 return slabhash_lookup(infra->client_ip_rates, h, &key, wr);
}
