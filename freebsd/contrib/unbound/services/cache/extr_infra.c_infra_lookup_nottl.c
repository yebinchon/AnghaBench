
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct sockaddr_storage {int dummy; } ;
struct lruhash_entry {int dummy; } ;
struct TYPE_2__ {int hash; int * data; void* key; } ;
struct infra_key {size_t namelen; TYPE_1__ entry; int * zonename; int addr; int addrlen; } ;
struct infra_cache {int hosts; } ;
typedef int socklen_t ;


 int hash_infra (struct sockaddr_storage*,int ,int *) ;
 int memcpy (int *,struct sockaddr_storage*,int ) ;
 struct lruhash_entry* slabhash_lookup (int ,int ,struct infra_key*,int) ;

struct lruhash_entry*
infra_lookup_nottl(struct infra_cache* infra, struct sockaddr_storage* addr,
 socklen_t addrlen, uint8_t* name, size_t namelen, int wr)
{
 struct infra_key k;
 k.addrlen = addrlen;
 memcpy(&k.addr, addr, addrlen);
 k.namelen = namelen;
 k.zonename = name;
 k.entry.hash = hash_infra(addr, addrlen, name);
 k.entry.key = (void*)&k;
 k.entry.data = ((void*)0);
 return slabhash_lookup(infra->hosts, k.entry.hash, &k, wr);
}
