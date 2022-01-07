
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_revnum_t ;
typedef int svn_fs_root_t ;
typedef int svn_error_t ;
struct edit_baton {int dummy; } ;
typedef int apr_pool_t ;


 char* FSPATH (char const*,int *) ;
 int SVN_ERR (int ) ;
 scalar_t__ SVN_IS_VALID_REVNUM (int ) ;
 int * SVN_NO_ERROR ;
 int can_create (int *,char const*,int *) ;
 int can_modify (int *,char const*,int ,int *) ;
 int get_root (int **,struct edit_baton*) ;
 int svn_fs_close_root (int *) ;
 int svn_fs_copy (int *,char const*,int *,char const*,int *) ;
 int svn_fs_delete (int *,char const*,int *) ;
 int svn_fs_revision_root (int **,int ,int ,int *) ;
 int svn_fs_root_fs (int *) ;

__attribute__((used)) static svn_error_t *
copy_cb(void *baton,
        const char *src_relpath,
        svn_revnum_t src_revision,
        const char *dst_relpath,
        svn_revnum_t replaces_rev,
        apr_pool_t *scratch_pool)
{
  struct edit_baton *eb = baton;
  const char *src_fspath = FSPATH(src_relpath, scratch_pool);
  const char *dst_fspath = FSPATH(dst_relpath, scratch_pool);
  svn_fs_root_t *root;
  svn_fs_root_t *src_root;

  SVN_ERR(get_root(&root, eb));


  if (SVN_IS_VALID_REVNUM(replaces_rev))
    {
      SVN_ERR(can_modify(root, dst_fspath, replaces_rev, scratch_pool));
      SVN_ERR(svn_fs_delete(root, dst_fspath, scratch_pool));
    }
  else
    {
      SVN_ERR(can_create(root, dst_fspath, scratch_pool));
    }

  SVN_ERR(svn_fs_revision_root(&src_root, svn_fs_root_fs(root), src_revision,
                               scratch_pool));
  SVN_ERR(svn_fs_copy(src_root, src_fspath, root, dst_fspath, scratch_pool));
  svn_fs_close_root(src_root);

  return SVN_NO_ERROR;
}
