
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef unsigned long long uint64_t ;
struct TYPE_4__ {unsigned long long aux_guid; unsigned long long aux_pool; int aux_count; } ;
typedef TYPE_1__ spa_aux_t ;
typedef int boolean_t ;
typedef int avl_tree_t ;


 TYPE_1__* avl_find (int *,TYPE_1__*,int *) ;

boolean_t
spa_aux_exists(uint64_t guid, uint64_t *pool, int *refcnt, avl_tree_t *avl)
{
 spa_aux_t search, *found;

 search.aux_guid = guid;
 found = avl_find(avl, &search, ((void*)0));

 if (pool) {
  if (found)
   *pool = found->aux_pool;
  else
   *pool = 0ULL;
 }

 if (refcnt) {
  if (found)
   *refcnt = found->aux_count;
  else
   *refcnt = 0;
 }

 return (found != ((void*)0));
}
