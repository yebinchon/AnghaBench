
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_fs_root_t ;
typedef int svn_fs_history_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;


 int * svn_error_trace (int ) ;
 int svn_fs_node_history2 (int **,int *,char const*,int *,int *) ;

svn_error_t *
svn_fs_node_history(svn_fs_history_t **history_p, svn_fs_root_t *root,
                    const char *path, apr_pool_t *pool)
{
  return svn_error_trace(svn_fs_node_history2(history_p, root, path,
                                              pool, pool));
}
