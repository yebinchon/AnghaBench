
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int uqn_delta; int uqn_id; } ;
typedef TYPE_1__ userquota_node_t ;
typedef int uint64_t ;
typedef scalar_t__ int64_t ;
typedef int avl_tree_t ;
typedef int avl_index_t ;


 int KM_SLEEP ;
 TYPE_1__* avl_find (int *,TYPE_1__*,int *) ;
 int avl_insert (int *,TYPE_1__*,int ) ;
 TYPE_1__* kmem_zalloc (int,int ) ;

__attribute__((used)) static void
userquota_update_cache(avl_tree_t *avl, uint64_t id, int64_t delta)
{
 userquota_node_t search = { .uqn_id = id };
 avl_index_t idx;

 userquota_node_t *uqn = avl_find(avl, &search, &idx);
 if (uqn == ((void*)0)) {
  uqn = kmem_zalloc(sizeof (*uqn), KM_SLEEP);
  uqn->uqn_id = id;
  avl_insert(avl, uqn, idx);
 }
 uqn->uqn_delta += delta;
}
