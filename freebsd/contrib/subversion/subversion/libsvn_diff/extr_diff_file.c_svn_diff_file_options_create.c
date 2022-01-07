
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int context_size; } ;
typedef TYPE_1__ svn_diff_file_options_t ;
typedef int apr_pool_t ;


 int SVN_DIFF__UNIFIED_CONTEXT_SIZE ;
 TYPE_1__* apr_pcalloc (int *,int) ;

svn_diff_file_options_t *
svn_diff_file_options_create(apr_pool_t *pool)
{
  svn_diff_file_options_t * opts = apr_pcalloc(pool, sizeof(*opts));

  opts->context_size = SVN_DIFF__UNIFIED_CONTEXT_SIZE;

  return opts;
}
