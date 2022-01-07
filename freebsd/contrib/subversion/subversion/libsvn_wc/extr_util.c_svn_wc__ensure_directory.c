
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ svn_node_kind_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;


 int APR_ENOTDIR ;
 int SVN_ERR (int ) ;
 int SVN_ERR_ASSERT (int) ;
 int * SVN_NO_ERROR ;
 int _ (char*) ;
 int svn_dirent_local_style (char const*,int *) ;
 int * svn_error_createf (int ,int *,int ,int ) ;
 int svn_io_check_path (char const*,scalar_t__*,int *) ;
 int svn_io_make_dir_recursively (char const*,int *) ;
 scalar_t__ svn_node_dir ;
 scalar_t__ svn_node_none ;

svn_error_t *
svn_wc__ensure_directory(const char *path,
                         apr_pool_t *pool)
{
  svn_node_kind_t kind;

  SVN_ERR(svn_io_check_path(path, &kind, pool));

  if (kind != svn_node_none && kind != svn_node_dir)
    {



      return svn_error_createf(APR_ENOTDIR, ((void*)0),
                               _("'%s' is not a directory"),
                               svn_dirent_local_style(path, pool));
    }
  else if (kind == svn_node_none)
    {

      SVN_ERR(svn_io_make_dir_recursively(path, pool));
    }
  else
    SVN_ERR_ASSERT(kind == svn_node_dir);

  return SVN_NO_ERROR;
}
