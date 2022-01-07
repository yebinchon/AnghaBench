
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int vdev_spa; int vdev_guid; } ;
typedef TYPE_1__ vdev_t ;
struct TYPE_7__ {unsigned long long aux_pool; int aux_guid; } ;
typedef TYPE_2__ spa_aux_t ;
typedef int avl_tree_t ;
typedef int avl_index_t ;


 int ASSERT (int) ;
 TYPE_2__* avl_find (int *,TYPE_2__*,int *) ;
 unsigned long long spa_guid (int ) ;

void
spa_aux_activate(vdev_t *vd, avl_tree_t *avl)
{
 spa_aux_t search, *found;
 avl_index_t where;

 search.aux_guid = vd->vdev_guid;
 found = avl_find(avl, &search, &where);
 ASSERT(found != ((void*)0));
 ASSERT(found->aux_pool == 0ULL);

 found->aux_pool = spa_guid(vd->vdev_spa);
}
