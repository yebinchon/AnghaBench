
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int dp_spa; int dp_dirty_dirs; } ;
typedef TYPE_1__ dsl_pool_t ;
struct TYPE_9__ {scalar_t__* dd_tempreserved; scalar_t__* dd_space_towrite; int dd_lock; TYPE_1__* dd_pool; scalar_t__ dd_parent; int * dd_dbuf; } ;
typedef TYPE_2__ dsl_dir_t ;


 int ASSERT (int) ;
 int TXG_SIZE ;
 int dsl_dir_async_rele (scalar_t__,TYPE_2__*) ;
 int dsl_prop_fini (TYPE_2__*) ;
 int kmem_free (TYPE_2__*,int) ;
 int mutex_destroy (int *) ;
 int spa_async_close (int ,TYPE_2__*) ;
 int txg_list_member (int *,TYPE_2__*,int) ;

__attribute__((used)) static void
dsl_dir_evict_async(void *dbu)
{
 dsl_dir_t *dd = dbu;
 dsl_pool_t *dp = dd->dd_pool;
 int t;

 dd->dd_dbuf = ((void*)0);

 for (t = 0; t < TXG_SIZE; t++) {
  ASSERT(!txg_list_member(&dp->dp_dirty_dirs, dd, t));
  ASSERT(dd->dd_tempreserved[t] == 0);
  ASSERT(dd->dd_space_towrite[t] == 0);
 }

 if (dd->dd_parent)
  dsl_dir_async_rele(dd->dd_parent, dd);

 spa_async_close(dd->dd_pool->dp_spa, dd);

 dsl_prop_fini(dd);
 mutex_destroy(&dd->dd_lock);
 kmem_free(dd, sizeof (dsl_dir_t));
}
