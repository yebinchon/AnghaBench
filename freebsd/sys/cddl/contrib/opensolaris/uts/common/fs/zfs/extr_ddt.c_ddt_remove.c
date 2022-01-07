
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ddt_tree; int ddt_lock; } ;
typedef TYPE_1__ ddt_t ;
typedef int ddt_entry_t ;


 int ASSERT (int ) ;
 int MUTEX_HELD (int *) ;
 int avl_remove (int *,int *) ;
 int ddt_free (int *) ;

void
ddt_remove(ddt_t *ddt, ddt_entry_t *dde)
{
 ASSERT(MUTEX_HELD(&ddt->ddt_lock));

 avl_remove(&ddt->ddt_tree, dde);
 ddt_free(dde);
}
