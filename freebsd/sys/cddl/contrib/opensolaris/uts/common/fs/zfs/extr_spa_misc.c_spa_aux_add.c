
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int vdev_guid; } ;
typedef TYPE_1__ vdev_t ;
struct TYPE_9__ {int aux_count; int aux_guid; } ;
typedef TYPE_2__ spa_aux_t ;
typedef int avl_tree_t ;
typedef int avl_index_t ;


 int KM_SLEEP ;
 TYPE_2__* avl_find (int *,TYPE_2__*,int *) ;
 int avl_insert (int *,TYPE_2__*,int ) ;
 TYPE_2__* kmem_zalloc (int,int ) ;

void
spa_aux_add(vdev_t *vd, avl_tree_t *avl)
{
 avl_index_t where;
 spa_aux_t search;
 spa_aux_t *aux;

 search.aux_guid = vd->vdev_guid;
 if ((aux = avl_find(avl, &search, &where)) != ((void*)0)) {
  aux->aux_count++;
 } else {
  aux = kmem_zalloc(sizeof (spa_aux_t), KM_SLEEP);
  aux->aux_guid = vd->vdev_guid;
  aux->aux_count = 1;
  avl_insert(avl, aux, where);
 }
}
