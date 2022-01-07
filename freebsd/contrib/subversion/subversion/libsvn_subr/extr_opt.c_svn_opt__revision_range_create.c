
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int svn_opt_revision_t ;
struct TYPE_4__ {int end; int start; } ;
typedef TYPE_1__ svn_opt_revision_range_t ;
typedef int apr_pool_t ;


 TYPE_1__* apr_palloc (int *,int) ;

svn_opt_revision_range_t *
svn_opt__revision_range_create(const svn_opt_revision_t *start_revision,
                               const svn_opt_revision_t *end_revision,
                               apr_pool_t *result_pool)
{
  svn_opt_revision_range_t *range = apr_palloc(result_pool, sizeof(*range));

  range->start = *start_revision;
  range->end = *end_revision;
  return range;
}
