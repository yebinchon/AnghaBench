
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct slabhash {int * array; } ;
struct lruhash_entry {int dummy; } ;
typedef int hashvalue_type ;


 int lruhash_insert (int ,int ,struct lruhash_entry*,void*,void*) ;
 size_t slab_idx (struct slabhash*,int ) ;

void slabhash_insert(struct slabhash* sl, hashvalue_type hash,
 struct lruhash_entry* entry, void* data, void* arg)
{
 lruhash_insert(sl->array[slab_idx(sl, hash)], hash, entry, data, arg);
}
