
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ucl_hash_t ;
typedef scalar_t__ ucl_hash_iter_t ;
struct ucl_hash_real_iter {int cur; int end; } ;



bool
ucl_hash_iter_has_next (ucl_hash_t *hashlin, ucl_hash_iter_t iter)
{
 struct ucl_hash_real_iter *it = (struct ucl_hash_real_iter *)(iter);

 return it->cur < it->end - 1;
}
