
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int time_t ;
struct sockaddr_storage {int dummy; } ;
struct lruhash_entry {void* data; void* key; int hash; int lock; } ;
struct infra_key {size_t namelen; struct lruhash_entry entry; int addr; int addrlen; int zonename; } ;
struct infra_data {size_t namelen; struct lruhash_entry entry; int addr; int addrlen; int zonename; } ;
struct infra_cache {int dummy; } ;
typedef int socklen_t ;


 int data_entry_init (struct infra_cache*,struct lruhash_entry*,int ) ;
 int free (struct infra_key*) ;
 int hash_infra (struct sockaddr_storage*,int ,int *) ;
 int lock_rw_init (int *) ;
 scalar_t__ malloc (int) ;
 int memcpy (int *,struct sockaddr_storage*,int ) ;
 int memdup (int *,size_t) ;

__attribute__((used)) static struct lruhash_entry*
new_entry(struct infra_cache* infra, struct sockaddr_storage* addr,
 socklen_t addrlen, uint8_t* name, size_t namelen, time_t tm)
{
 struct infra_data* data;
 struct infra_key* key = (struct infra_key*)malloc(sizeof(*key));
 if(!key)
  return ((void*)0);
 data = (struct infra_data*)malloc(sizeof(struct infra_data));
 if(!data) {
  free(key);
  return ((void*)0);
 }
 key->zonename = memdup(name, namelen);
 if(!key->zonename) {
  free(key);
  free(data);
  return ((void*)0);
 }
 key->namelen = namelen;
 lock_rw_init(&key->entry.lock);
 key->entry.hash = hash_infra(addr, addrlen, name);
 key->entry.key = (void*)key;
 key->entry.data = (void*)data;
 key->addrlen = addrlen;
 memcpy(&key->addr, addr, addrlen);
 data_entry_init(infra, &key->entry, tm);
 return &key->entry;
}
