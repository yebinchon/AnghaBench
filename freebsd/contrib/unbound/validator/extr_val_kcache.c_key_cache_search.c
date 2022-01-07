
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint16_t ;
struct lruhash_entry {scalar_t__ key; } ;
struct TYPE_2__ {int hash; struct key_entry_key* key; } ;
struct key_entry_key {size_t namelen; TYPE_1__ entry; int key_class; int * name; } ;
struct key_cache {int slab; } ;


 int key_entry_hash (struct key_entry_key*) ;
 struct lruhash_entry* slabhash_lookup (int ,int ,struct key_entry_key*,int) ;

__attribute__((used)) static struct key_entry_key*
key_cache_search(struct key_cache* kcache, uint8_t* name, size_t namelen,
 uint16_t key_class, int wr)
{
 struct lruhash_entry* e;
 struct key_entry_key lookfor;
 lookfor.entry.key = &lookfor;
 lookfor.name = name;
 lookfor.namelen = namelen;
 lookfor.key_class = key_class;
 key_entry_hash(&lookfor);
 e = slabhash_lookup(kcache->slab, lookfor.entry.hash, &lookfor, wr);
 if(!e)
  return ((void*)0);
 return (struct key_entry_key*)e->key;
}
