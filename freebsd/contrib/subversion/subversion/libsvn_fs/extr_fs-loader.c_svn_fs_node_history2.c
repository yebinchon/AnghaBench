
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* vtable; } ;
typedef TYPE_2__ svn_fs_root_t ;
typedef int svn_fs_history_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;
struct TYPE_5__ {int (* node_history ) (int **,TYPE_2__*,char const*,int *,int *) ;} ;


 int stub1 (int **,TYPE_2__*,char const*,int *,int *) ;
 int * svn_error_trace (int ) ;

svn_error_t *
svn_fs_node_history2(svn_fs_history_t **history_p, svn_fs_root_t *root,
                     const char *path, apr_pool_t *result_pool,
                     apr_pool_t *scratch_pool)
{
  return svn_error_trace(root->vtable->node_history(history_p, root, path,
                                                    result_pool,
                                                    scratch_pool));
}
