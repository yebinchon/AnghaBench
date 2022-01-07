
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int int64_t ;
struct TYPE_5__ {int dd_lock; int dd_dbuf; } ;
typedef TYPE_1__ dsl_dir_t ;
typedef int dmu_tx_t ;
typedef size_t dd_used_t ;
struct TYPE_6__ {int dd_flags; scalar_t__ dd_used_bytes; int * dd_used_breakdown; } ;


 scalar_t__ ABS (int ) ;
 int ASSERT (int) ;
 int DD_FLAG_USED_BREAKDOWN ;
 size_t DD_USED_NUM ;
 int dmu_buf_will_dirty (int ,int *) ;
 scalar_t__ dmu_tx_is_syncing (int *) ;
 TYPE_3__* dsl_dir_phys (TYPE_1__*) ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;

void
dsl_dir_transfer_space(dsl_dir_t *dd, int64_t delta,
    dd_used_t oldtype, dd_used_t newtype, dmu_tx_t *tx)
{
 ASSERT(tx == ((void*)0) || dmu_tx_is_syncing(tx));
 ASSERT(oldtype < DD_USED_NUM);
 ASSERT(newtype < DD_USED_NUM);

 if (delta == 0 ||
     !(dsl_dir_phys(dd)->dd_flags & DD_FLAG_USED_BREAKDOWN))
  return;

 if (tx != ((void*)0))
  dmu_buf_will_dirty(dd->dd_dbuf, tx);
 mutex_enter(&dd->dd_lock);
 ASSERT(delta > 0 ?
     dsl_dir_phys(dd)->dd_used_breakdown[oldtype] >= delta :
     dsl_dir_phys(dd)->dd_used_breakdown[newtype] >= -delta);
 ASSERT(dsl_dir_phys(dd)->dd_used_bytes >= ABS(delta));
 dsl_dir_phys(dd)->dd_used_breakdown[oldtype] -= delta;
 dsl_dir_phys(dd)->dd_used_breakdown[newtype] += delta;
 mutex_exit(&dd->dd_lock);
}
