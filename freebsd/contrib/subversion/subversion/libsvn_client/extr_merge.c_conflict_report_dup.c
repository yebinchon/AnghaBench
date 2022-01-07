
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int conflicted_range; int target_abspath; } ;
typedef TYPE_1__ svn_client__conflict_report_t ;
typedef int apr_pool_t ;


 TYPE_1__* apr_pmemdup (int *,TYPE_1__ const*,int) ;
 int apr_pstrdup (int *,int ) ;
 int merge_source_dup (int ,int *) ;

__attribute__((used)) static svn_client__conflict_report_t *
conflict_report_dup(const svn_client__conflict_report_t *report,
                    apr_pool_t *result_pool)
{
  svn_client__conflict_report_t *new = apr_pmemdup(result_pool, report,
                                                   sizeof(*new));

  new->target_abspath = apr_pstrdup(result_pool, report->target_abspath);
  new->conflicted_range = merge_source_dup(report->conflicted_range,
                                           result_pool);
  return new;
}
