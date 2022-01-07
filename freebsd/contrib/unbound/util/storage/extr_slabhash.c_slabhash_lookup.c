
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct slabhash {int * array; } ;
struct lruhash_entry {int dummy; } ;
typedef int hashvalue_type ;


 struct lruhash_entry* lruhash_lookup (int ,int ,void*,int) ;
 size_t slab_idx (struct slabhash*,int ) ;

struct lruhash_entry* slabhash_lookup(struct slabhash* sl,
 hashvalue_type hash, void* key, int wr)
{
 return lruhash_lookup(sl->array[slab_idx(sl, hash)], hash, key, wr);
}
