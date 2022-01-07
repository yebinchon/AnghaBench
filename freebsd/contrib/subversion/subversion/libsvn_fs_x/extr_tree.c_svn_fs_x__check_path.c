
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef int svn_node_kind_t ;
typedef int svn_fs_root_t ;
struct TYPE_8__ {scalar_t__ apr_err; } ;
typedef TYPE_1__ svn_error_t ;
typedef int dag_node_t ;
typedef int apr_pool_t ;


 scalar_t__ SVN_ERR_FS_NOT_DIRECTORY ;
 scalar_t__ SVN_ERR_FS_NOT_FOUND ;
 TYPE_1__* SVN_NO_ERROR ;
 int svn_error_clear (TYPE_1__*) ;
 TYPE_1__* svn_error_trace (TYPE_1__*) ;
 int svn_fs_x__dag_node_kind (int *) ;
 TYPE_1__* svn_fs_x__get_temp_dag_node (int **,int *,char const*,int *) ;
 int svn_node_none ;

svn_error_t *
svn_fs_x__check_path(svn_node_kind_t *kind_p,
                     svn_fs_root_t *root,
                     const char *path,
                     apr_pool_t *scratch_pool)
{
  dag_node_t *node;


  svn_error_t *err = svn_fs_x__get_temp_dag_node(&node, root, path,
                                                 scratch_pool);


  if (!err)
    *kind_p = svn_fs_x__dag_node_kind(node);

  if (err &&
      ((err->apr_err == SVN_ERR_FS_NOT_FOUND)
       || (err->apr_err == SVN_ERR_FS_NOT_DIRECTORY)))
    {
      svn_error_clear(err);
      err = SVN_NO_ERROR;
      *kind_p = svn_node_none;
    }

  return svn_error_trace(err);
}
