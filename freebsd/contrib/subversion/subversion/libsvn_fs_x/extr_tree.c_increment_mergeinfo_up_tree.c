
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int node; struct TYPE_3__* parent; } ;
typedef TYPE_1__ svn_fs_x__dag_path_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;
typedef int apr_int64_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int svn_fs_x__dag_increment_mergeinfo_count (int ,int ,int *) ;
 int svn_pool_clear (int *) ;
 int * svn_pool_create (int *) ;
 int svn_pool_destroy (int *) ;

__attribute__((used)) static svn_error_t *
increment_mergeinfo_up_tree(svn_fs_x__dag_path_t *pp,
                            apr_int64_t increment,
                            apr_pool_t *scratch_pool)
{
  apr_pool_t *iterpool = svn_pool_create(scratch_pool);

  for (; pp; pp = pp->parent)
    {
      svn_pool_clear(iterpool);
      SVN_ERR(svn_fs_x__dag_increment_mergeinfo_count(pp->node,
                                                      increment,
                                                      iterpool));
    }

  svn_pool_destroy(iterpool);
  return SVN_NO_ERROR;
}
