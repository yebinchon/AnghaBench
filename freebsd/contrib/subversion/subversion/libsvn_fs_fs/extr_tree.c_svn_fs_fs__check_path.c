
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
 TYPE_1__* get_dag (int **,int *,char const*,int *) ;
 int svn_error_clear (TYPE_1__*) ;
 TYPE_1__* svn_error_trace (TYPE_1__*) ;
 int svn_fs_fs__dag_node_kind (int *) ;
 int svn_node_none ;

svn_error_t *
svn_fs_fs__check_path(svn_node_kind_t *kind_p,
                      svn_fs_root_t *root,
                      const char *path,
                      apr_pool_t *pool)
{
  dag_node_t *node;
  svn_error_t *err;

  err = get_dag(&node, root, path, pool);
  if (err &&
      ((err->apr_err == SVN_ERR_FS_NOT_FOUND)
       || (err->apr_err == SVN_ERR_FS_NOT_DIRECTORY)))
    {
      svn_error_clear(err);
      *kind_p = svn_node_none;
      return SVN_NO_ERROR;
    }
  else if (err)
    return svn_error_trace(err);

  *kind_p = svn_fs_fs__dag_node_kind(node);
  return SVN_NO_ERROR;
}
