
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ svn_node_kind_t ;
typedef int svn_error_t ;
typedef int svn_boolean_t ;
typedef int apr_pool_t ;


 int FALSE ;
 int SVN_REPOS__DB_DIR ;
 int SVN_REPOS__FORMAT ;
 int TRUE ;
 int svn_dirent_join (char const*,int ,int *) ;
 int svn_error_clear (int *) ;
 int * svn_io_check_path (int ,scalar_t__*,int *) ;
 int * svn_io_check_resolved_path (int ,scalar_t__*,int *) ;
 scalar_t__ svn_node_dir ;
 scalar_t__ svn_node_file ;

__attribute__((used)) static svn_boolean_t
check_repos_path(const char *path,
                 apr_pool_t *pool)
{
  svn_node_kind_t kind;
  svn_error_t *err;

  err = svn_io_check_path(svn_dirent_join(path, SVN_REPOS__FORMAT, pool),
                          &kind, pool);
  if (err)
    {
      svn_error_clear(err);
      return TRUE;
    }
  if (kind != svn_node_file)
    return FALSE;



  err = svn_io_check_resolved_path
    (svn_dirent_join(path, SVN_REPOS__DB_DIR, pool), &kind, pool);
  if (err)
    {
      svn_error_clear(err);
      return TRUE;
    }
  if (kind != svn_node_dir)
    return FALSE;

  return TRUE;
}
