
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * remaining_source; int * conflicted_range; } ;
typedef TYPE_1__ single_range_conflict_report_t ;
typedef int merge_source_t ;
typedef int apr_pool_t ;


 TYPE_1__* apr_palloc (int *,int) ;
 int assert (int ) ;
 int * merge_source_dup (int const*,int *) ;

__attribute__((used)) static single_range_conflict_report_t *
single_range_conflict_report_create(const merge_source_t *conflicted_range,
                                    const merge_source_t *remaining_source,
                                    apr_pool_t *result_pool)
{
  single_range_conflict_report_t *report
    = apr_palloc(result_pool, sizeof(*report));

  assert(conflicted_range != ((void*)0));

  report->conflicted_range = merge_source_dup(conflicted_range, result_pool);
  report->remaining_source
    = remaining_source ? merge_source_dup(remaining_source, result_pool)
                       : ((void*)0);
  return report;
}
