
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_revnum_t ;
typedef int svn_fs_root_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;


 int SVN_INVALID_REVNUM ;
 int svn_error_clear (int *) ;
 scalar_t__ svn_fs_is_revision_root (int *) ;
 int * svn_fs_node_created_rev (int *,int *,char const*,int *) ;
 int svn_fs_revision_root_revision (int *) ;

__attribute__((used)) static svn_revnum_t
get_path_revision(svn_fs_root_t *root,
                  const char *path,
                  apr_pool_t *pool)
{
  svn_revnum_t revision;
  svn_error_t *err;



  if (svn_fs_is_revision_root(root))
    return svn_fs_revision_root_revision(root);



  if ((err = svn_fs_node_created_rev(&revision, root, path, pool)))
    {
      revision = SVN_INVALID_REVNUM;
      svn_error_clear(err);
    }







  return revision;
}
