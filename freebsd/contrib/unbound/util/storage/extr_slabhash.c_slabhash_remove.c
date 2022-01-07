
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct slabhash {int * array; } ;
typedef int hashvalue_type ;


 int lruhash_remove (int ,int ,void*) ;
 size_t slab_idx (struct slabhash*,int ) ;

void slabhash_remove(struct slabhash* sl, hashvalue_type hash, void* key)
{
 lruhash_remove(sl->array[slab_idx(sl, hash)], hash, key);
}
