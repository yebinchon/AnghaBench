
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int was_last_range; int conflicted_range; int target_abspath; } ;
typedef TYPE_1__ svn_client__conflict_report_t ;
typedef int svn_boolean_t ;
typedef int merge_source_t ;
typedef int apr_pool_t ;


 TYPE_1__* apr_palloc (int *,int) ;
 int apr_pstrdup (int *,char const*) ;
 int merge_source_dup (int const*,int *) ;

__attribute__((used)) static svn_client__conflict_report_t *
conflict_report_create(const char *target_abspath,
                       const merge_source_t *conflicted_range,
                       svn_boolean_t was_last_range,
                       apr_pool_t *result_pool)
{
  svn_client__conflict_report_t *report = apr_palloc(result_pool,
                                                     sizeof(*report));

  report->target_abspath = apr_pstrdup(result_pool, target_abspath);
  report->conflicted_range = merge_source_dup(conflicted_range, result_pool);
  report->was_last_range = was_last_range;
  return report;
}
