
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int svn_error_t ;
struct TYPE_3__ {int node; struct TYPE_3__* parent; } ;
typedef TYPE_1__ parent_path_t ;
typedef int apr_pool_t ;
typedef int apr_int64_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int svn_fs_fs__dag_increment_mergeinfo_count (int ,int ,int *) ;

__attribute__((used)) static svn_error_t *
increment_mergeinfo_up_tree(parent_path_t *pp,
                            apr_int64_t increment,
                            apr_pool_t *pool)
{
  for (; pp; pp = pp->parent)
    SVN_ERR(svn_fs_fs__dag_increment_mergeinfo_count(pp->node,
                                                     increment,
                                                     pool));

  return SVN_NO_ERROR;
}
