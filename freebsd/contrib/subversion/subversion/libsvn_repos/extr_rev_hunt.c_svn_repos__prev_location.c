
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
 int svn_fs_closest_copy (int **,char const**,int *,char const*,int *) ;
 int svn_fs_copied_from (int *,char const**,int *,char const*,int *) ;
 int svn_fs_revision_root (int **,int *,int ,int *) ;
 int svn_fs_revision_root_revision (int *) ;
 char* svn_fspath__join (char const*,char const*,int *) ;
 char* svn_fspath__skip_ancestor (char const*,char const*) ;

svn_error_t *
svn_repos__prev_location(svn_revnum_t *appeared_rev,
                         const char **prev_path,
                         svn_revnum_t *prev_rev,
                         svn_fs_t *fs,
                         svn_revnum_t revision,
                         const char *path,
                         apr_pool_t *pool)
{
  svn_fs_root_t *root, *copy_root;
  const char *copy_path, *copy_src_path, *remainder;
  svn_revnum_t copy_src_rev;


  if (appeared_rev)
    *appeared_rev = SVN_INVALID_REVNUM;
  if (prev_rev)
    *prev_rev = SVN_INVALID_REVNUM;
  if (prev_path)
    *prev_path = ((void*)0);



  SVN_ERR(svn_fs_revision_root(&root, fs, revision, pool));
  SVN_ERR(svn_fs_closest_copy(&copy_root, &copy_path, root, path, pool));
  if (! copy_root)
    return SVN_NO_ERROR;
  SVN_ERR(svn_fs_copied_from(&copy_src_rev, &copy_src_path,
                             copy_root, copy_path, pool));
  remainder = svn_fspath__skip_ancestor(copy_path, path);
  if (prev_path)
    *prev_path = svn_fspath__join(copy_src_path, remainder, pool);
  if (appeared_rev)
    *appeared_rev = svn_fs_revision_root_revision(copy_root);
  if (prev_rev)
    *prev_rev = copy_src_rev;
  return SVN_NO_ERROR;
}
