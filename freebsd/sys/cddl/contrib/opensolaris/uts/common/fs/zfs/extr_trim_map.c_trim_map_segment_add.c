
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct TYPE_15__ {scalar_t__ ts_start; scalar_t__ ts_end; void* ts_time; scalar_t__ ts_txg; } ;
typedef TYPE_1__ trim_seg_t ;
struct TYPE_16__ {int tm_queued_frees; int tm_lock; } ;
typedef TYPE_2__ trim_map_t ;
typedef void* hrtime_t ;
typedef int boolean_t ;
typedef int avl_index_t ;


 int ASSERT (int ) ;
 int AVL_AFTER ;
 int AVL_BEFORE ;
 int KM_SLEEP ;
 int MUTEX_HELD (int *) ;
 int TRIM_MAP_ADD (TYPE_2__*,TYPE_1__*) ;
 int TRIM_MAP_REM (TYPE_2__*,TYPE_1__*) ;
 int VERIFY (int) ;
 TYPE_1__* avl_find (int *,TYPE_1__*,int *) ;
 int avl_insert (int *,TYPE_1__*,int ) ;
 TYPE_1__* avl_nearest (int *,int ,int ) ;
 int avl_remove (int *,TYPE_1__*) ;
 void* gethrtime () ;
 TYPE_1__* kmem_alloc (int,int ) ;
 int kmem_free (TYPE_1__*,int) ;

__attribute__((used)) static void
trim_map_segment_add(trim_map_t *tm, uint64_t start, uint64_t end, uint64_t txg)
{
 avl_index_t where;
 trim_seg_t tsearch, *ts_before, *ts_after, *ts;
 boolean_t merge_before, merge_after;
 hrtime_t time;

 ASSERT(MUTEX_HELD(&tm->tm_lock));
 VERIFY(start < end);

 time = gethrtime();
 tsearch.ts_start = start;
 tsearch.ts_end = end;

 ts = avl_find(&tm->tm_queued_frees, &tsearch, &where);
 if (ts != ((void*)0)) {
  if (start < ts->ts_start)
   trim_map_segment_add(tm, start, ts->ts_start, txg);
  if (end > ts->ts_end)
   trim_map_segment_add(tm, ts->ts_end, end, txg);
  return;
 }

 ts_before = avl_nearest(&tm->tm_queued_frees, where, AVL_BEFORE);
 ts_after = avl_nearest(&tm->tm_queued_frees, where, AVL_AFTER);

 merge_before = (ts_before != ((void*)0) && ts_before->ts_end == start);
 merge_after = (ts_after != ((void*)0) && ts_after->ts_start == end);

 if (merge_before && merge_after) {
  avl_remove(&tm->tm_queued_frees, ts_before);
  TRIM_MAP_REM(tm, ts_before);
  TRIM_MAP_REM(tm, ts_after);
  ts_after->ts_start = ts_before->ts_start;
  ts_after->ts_txg = txg;
  ts_after->ts_time = time;
  TRIM_MAP_ADD(tm, ts_after);
  kmem_free(ts_before, sizeof (*ts_before));
 } else if (merge_before) {
  TRIM_MAP_REM(tm, ts_before);
  ts_before->ts_end = end;
  ts_before->ts_txg = txg;
  ts_before->ts_time = time;
  TRIM_MAP_ADD(tm, ts_before);
 } else if (merge_after) {
  TRIM_MAP_REM(tm, ts_after);
  ts_after->ts_start = start;
  ts_after->ts_txg = txg;
  ts_after->ts_time = time;
  TRIM_MAP_ADD(tm, ts_after);
 } else {
  ts = kmem_alloc(sizeof (*ts), KM_SLEEP);
  ts->ts_start = start;
  ts->ts_end = end;
  ts->ts_txg = txg;
  ts->ts_time = time;
  avl_insert(&tm->tm_queued_frees, ts, where);
  TRIM_MAP_ADD(tm, ts);
 }
}
