
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_revnum_t ;
typedef int svn_fs_t ;
typedef int svn_fs_root_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int SVN_INVALID_REVNUM ;
 int * SVN_NO_ERROR ;
 int fs_closest_copy (int **,char const**,int *,char const*,int *) ;
 int fs_copied_from (int *,char const**,int *,char const*,int *) ;
 char* svn_fspath__join (char const*,char const*,int *) ;
 char* svn_fspath__skip_ancestor (char const*,char const*) ;

__attribute__((used)) static svn_error_t *
prev_location(const char **prev_path,
              svn_revnum_t *prev_rev,
              svn_fs_t *fs,
              svn_fs_root_t *root,
              const char *path,
              apr_pool_t *pool)
{
  const char *copy_path, *copy_src_path, *remainder_path;
  svn_fs_root_t *copy_root;
  svn_revnum_t copy_src_rev;



  SVN_ERR(fs_closest_copy(&copy_root, &copy_path, root, path, pool));
  if (! copy_root)
    {
      *prev_rev = SVN_INVALID_REVNUM;
      *prev_path = ((void*)0);
      return SVN_NO_ERROR;
    }
  SVN_ERR(fs_copied_from(&copy_src_rev, &copy_src_path,
                         copy_root, copy_path, pool));
  remainder_path = svn_fspath__skip_ancestor(copy_path, path);
  *prev_path = svn_fspath__join(copy_src_path, remainder_path, pool);
  *prev_rev = copy_src_rev;
  return SVN_NO_ERROR;
}
