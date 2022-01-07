
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int spa_errlist_lock; int spa_errlist_scrub; int spa_errlist_last; } ;
typedef TYPE_1__ spa_t ;
typedef int spa_error_entry_t ;


 int * avl_destroy_nodes (int *,void**) ;
 int kmem_free (int *,int) ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;

void
spa_errlog_drain(spa_t *spa)
{
 spa_error_entry_t *se;
 void *cookie;

 mutex_enter(&spa->spa_errlist_lock);

 cookie = ((void*)0);
 while ((se = avl_destroy_nodes(&spa->spa_errlist_last,
     &cookie)) != ((void*)0))
  kmem_free(se, sizeof (spa_error_entry_t));
 cookie = ((void*)0);
 while ((se = avl_destroy_nodes(&spa->spa_errlist_scrub,
     &cookie)) != ((void*)0))
  kmem_free(se, sizeof (spa_error_entry_t));

 mutex_exit(&spa->spa_errlist_lock);
}
