
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct slabhash {struct lruhash** array; } ;
struct lruhash {int dummy; } ;
typedef int hashvalue_type ;


 size_t slab_idx (struct slabhash*,int ) ;

struct lruhash* slabhash_gettable(struct slabhash* sl, hashvalue_type hash)
{
 return sl->array[slab_idx(sl, hash)];
}
