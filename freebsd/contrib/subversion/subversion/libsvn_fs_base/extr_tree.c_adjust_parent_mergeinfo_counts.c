
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int trail_t ;
typedef int svn_error_t ;
struct TYPE_3__ {struct TYPE_3__* parent; int node; } ;
typedef TYPE_1__ parent_path_t ;
typedef int apr_pool_t ;
typedef int apr_int64_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int svn_fs_base__dag_adjust_mergeinfo_count (int ,int ,char const*,int *,int *) ;
 int svn_pool_clear (int *) ;
 int * svn_pool_create (int *) ;
 int svn_pool_destroy (int *) ;

__attribute__((used)) static svn_error_t *
adjust_parent_mergeinfo_counts(parent_path_t *parent_path,
                               apr_int64_t count_delta,
                               const char *txn_id,
                               trail_t *trail,
                               apr_pool_t *pool)
{
  apr_pool_t *iterpool;
  parent_path_t *pp = parent_path;

  if (count_delta == 0)
    return SVN_NO_ERROR;

  iterpool = svn_pool_create(pool);

  while (pp)
    {
      svn_pool_clear(iterpool);
      SVN_ERR(svn_fs_base__dag_adjust_mergeinfo_count(pp->node, count_delta,
                                                      txn_id, trail,
                                                      iterpool));
      pp = pp->parent;
    }
  svn_pool_destroy(iterpool);

  return SVN_NO_ERROR;
}
