
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {int ddt_repair_tree; int ddt_spa; } ;
typedef TYPE_1__ ddt_t ;
struct TYPE_11__ {int * dde_repair_abd; } ;
typedef TYPE_2__ ddt_entry_t ;
typedef int avl_index_t ;


 int * avl_find (int *,TYPE_2__*,int *) ;
 int avl_insert (int *,TYPE_2__*,int ) ;
 int ddt_enter (TYPE_1__*) ;
 int ddt_exit (TYPE_1__*) ;
 int ddt_free (TYPE_2__*) ;
 scalar_t__ spa_writeable (int ) ;

void
ddt_repair_done(ddt_t *ddt, ddt_entry_t *dde)
{
 avl_index_t where;

 ddt_enter(ddt);

 if (dde->dde_repair_abd != ((void*)0) && spa_writeable(ddt->ddt_spa) &&
     avl_find(&ddt->ddt_repair_tree, dde, &where) == ((void*)0))
  avl_insert(&ddt->ddt_repair_tree, dde, where);
 else
  ddt_free(dde);

 ddt_exit(ddt);
}
