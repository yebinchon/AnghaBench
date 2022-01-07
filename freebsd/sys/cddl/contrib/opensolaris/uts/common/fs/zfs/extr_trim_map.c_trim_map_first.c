
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct TYPE_6__ {scalar_t__ ts_txg; scalar_t__ ts_time; } ;
typedef TYPE_1__ trim_seg_t ;
struct TYPE_7__ {int tm_head; int tm_lock; } ;
typedef TYPE_2__ trim_map_t ;
typedef scalar_t__ hrtime_t ;
typedef scalar_t__ boolean_t ;


 int ASSERT (int ) ;
 int MUTEX_HELD (int *) ;
 int VERIFY (int) ;
 TYPE_1__* list_head (int *) ;

__attribute__((used)) static trim_seg_t *
trim_map_first(trim_map_t *tm, uint64_t txg, uint64_t txgsafe, hrtime_t time,
    boolean_t force)
{
 trim_seg_t *ts;

 ASSERT(MUTEX_HELD(&tm->tm_lock));
 VERIFY(txgsafe >= txg);

 ts = list_head(&tm->tm_head);
 if (ts != ((void*)0) && ts->ts_txg <= txgsafe &&
     (ts->ts_txg <= txg || ts->ts_time <= time || force))
  return (ts);
 return (((void*)0));
}
