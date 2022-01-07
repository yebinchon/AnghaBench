
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct TYPE_14__ {scalar_t__ ts_start; scalar_t__ ts_end; int ts_time; int ts_txg; } ;
typedef TYPE_1__ trim_seg_t ;
struct TYPE_15__ {int tm_queued_frees; int tm_lock; } ;
typedef TYPE_2__ trim_map_t ;
typedef int boolean_t ;


 int ASSERT (int ) ;
 int AVL_AFTER ;
 int KM_SLEEP ;
 int MUTEX_HELD (int *) ;
 int TRIM_MAP_ADD (TYPE_2__*,TYPE_1__*) ;
 int TRIM_MAP_REM (TYPE_2__*,TYPE_1__*) ;
 int avl_insert_here (int *,TYPE_1__*,TYPE_1__*,int ) ;
 int avl_remove (int *,TYPE_1__*) ;
 TYPE_1__* kmem_alloc (int,int ) ;
 int kmem_free (TYPE_1__*,int) ;

__attribute__((used)) static void
trim_map_segment_remove(trim_map_t *tm, trim_seg_t *ts, uint64_t start,
    uint64_t end)
{
 trim_seg_t *nts;
 boolean_t left_over, right_over;

 ASSERT(MUTEX_HELD(&tm->tm_lock));

 left_over = (ts->ts_start < start);
 right_over = (ts->ts_end > end);

 TRIM_MAP_REM(tm, ts);
 if (left_over && right_over) {
  nts = kmem_alloc(sizeof (*nts), KM_SLEEP);
  nts->ts_start = end;
  nts->ts_end = ts->ts_end;
  nts->ts_txg = ts->ts_txg;
  nts->ts_time = ts->ts_time;
  ts->ts_end = start;
  avl_insert_here(&tm->tm_queued_frees, nts, ts, AVL_AFTER);
  TRIM_MAP_ADD(tm, ts);
  TRIM_MAP_ADD(tm, nts);
 } else if (left_over) {
  ts->ts_end = start;
  TRIM_MAP_ADD(tm, ts);
 } else if (right_over) {
  ts->ts_start = end;
  TRIM_MAP_ADD(tm, ts);
 } else {
  avl_remove(&tm->tm_queued_frees, ts);
  kmem_free(ts, sizeof (*ts));
 }
}
