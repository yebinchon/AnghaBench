
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int dp_dirty_dirs; } ;
typedef TYPE_1__ dsl_pool_t ;
struct TYPE_10__ {int dd_dbuf; TYPE_1__* dd_pool; } ;
typedef TYPE_2__ dsl_dir_t ;
struct TYPE_11__ {int tx_txg; } ;
typedef TYPE_3__ dmu_tx_t ;


 int ASSERT (int ) ;
 int dmu_buf_add_ref (int ,TYPE_2__*) ;
 int dsl_dir_phys (TYPE_2__*) ;
 scalar_t__ txg_list_add (int *,TYPE_2__*,int ) ;

void
dsl_dir_dirty(dsl_dir_t *dd, dmu_tx_t *tx)
{
 dsl_pool_t *dp = dd->dd_pool;

 ASSERT(dsl_dir_phys(dd));

 if (txg_list_add(&dp->dp_dirty_dirs, dd, tx->tx_txg)) {

  dmu_buf_add_ref(dd->dd_dbuf, dd);
 }
}
