
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int dts_naggregations; TYPE_2__** dts_aggregations; } ;
typedef TYPE_1__ dtrace_state_t ;
struct TYPE_6__ {int dtag_id; } ;
typedef TYPE_2__ dtrace_aggregation_t ;
typedef int dtrace_aggid_t ;


 int ASSERT (int) ;
 int MUTEX_HELD (int *) ;
 int dtrace_lock ;

__attribute__((used)) static dtrace_aggregation_t *
dtrace_aggid2agg(dtrace_state_t *state, dtrace_aggid_t id)
{
 dtrace_aggregation_t *agg;

 ASSERT(MUTEX_HELD(&dtrace_lock));

 if (id == 0 || id > state->dts_naggregations)
  return (((void*)0));

 ASSERT(state->dts_naggregations > 0 && state->dts_aggregations != ((void*)0));
 ASSERT((agg = state->dts_aggregations[id - 1]) == ((void*)0) ||
     agg->dtag_id == id);

 return (state->dts_aggregations[id - 1]);
}
