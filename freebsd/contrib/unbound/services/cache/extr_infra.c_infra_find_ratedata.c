
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_2__ {int hash; } ;
struct rate_key {size_t namelen; TYPE_1__ entry; int * name; } ;
struct lruhash_entry {int dummy; } ;
struct infra_cache {int domain_rates; } ;
typedef int key ;
typedef int hashvalue_type ;


 int dname_query_hash (int *,int) ;
 int memset (struct rate_key*,int ,int) ;
 struct lruhash_entry* slabhash_lookup (int ,int ,struct rate_key*,int) ;

__attribute__((used)) static struct lruhash_entry* infra_find_ratedata(struct infra_cache* infra,
 uint8_t* name, size_t namelen, int wr)
{
 struct rate_key key;
 hashvalue_type h = dname_query_hash(name, 0xab);
 memset(&key, 0, sizeof(key));
 key.name = name;
 key.namelen = namelen;
 key.entry.hash = h;
 return slabhash_lookup(infra->domain_rates, h, &key, wr);
}
