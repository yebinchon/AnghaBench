
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_12__ {TYPE_1__* io_logical; } ;
typedef TYPE_2__ zio_t ;
typedef void* zbookmark_phys_t ;
struct TYPE_13__ {int spa_errlist_lock; int spa_errlist_last; int spa_errlist_scrub; scalar_t__ spa_scrub_finished; scalar_t__ spa_scrub_active; } ;
typedef TYPE_3__ spa_t ;
struct TYPE_14__ {void* se_bookmark; } ;
typedef TYPE_4__ spa_error_entry_t ;
typedef int avl_tree_t ;
typedef int avl_index_t ;
struct TYPE_11__ {void* io_bookmark; } ;


 int KM_SLEEP ;
 scalar_t__ SPA_LOAD_TRYIMPORT ;
 int * avl_find (int *,TYPE_4__*,int *) ;
 int avl_insert (int *,TYPE_4__*,int ) ;
 TYPE_4__* kmem_zalloc (int,int ) ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;
 scalar_t__ spa_load_state (TYPE_3__*) ;

void
spa_log_error(spa_t *spa, zio_t *zio)
{
 zbookmark_phys_t *zb = &zio->io_logical->io_bookmark;
 spa_error_entry_t search;
 spa_error_entry_t *new;
 avl_tree_t *tree;
 avl_index_t where;





 if (spa_load_state(spa) == SPA_LOAD_TRYIMPORT)
  return;

 mutex_enter(&spa->spa_errlist_lock);





 if (spa->spa_scrub_active || spa->spa_scrub_finished)
  tree = &spa->spa_errlist_scrub;
 else
  tree = &spa->spa_errlist_last;

 search.se_bookmark = *zb;
 if (avl_find(tree, &search, &where) != ((void*)0)) {
  mutex_exit(&spa->spa_errlist_lock);
  return;
 }

 new = kmem_zalloc(sizeof (spa_error_entry_t), KM_SLEEP);
 new->se_bookmark = *zb;
 avl_insert(tree, new, where);

 mutex_exit(&spa->spa_errlist_lock);
}
