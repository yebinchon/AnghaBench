
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_revnum_t ;
typedef int svn_fs_root_t ;
typedef int svn_error_t ;
struct edit_baton {int dummy; } ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;


 int APR_HASH_KEY_STRING ;
 char* FSPATH (char const*,int *) ;
 int SVN_ERR (int ) ;
 scalar_t__ SVN_IS_VALID_REVNUM (int ) ;
 int SVN_PROP_SPECIAL ;
 int SVN_PROP_SPECIAL_VALUE ;
 int SVN__NOT_IMPLEMENTED () ;
 int add_new_props (int *,char const*,int *,int *) ;
 int apr_hash_set (int *,int ,int ,int ) ;
 int can_create (int *,char const*,int *) ;
 int can_modify (int *,char const*,int ,int *) ;
 int fs_contents ;
 int get_root (int **,struct edit_baton*) ;
 int svn_fs_apply_text (int *,int *,char const*,int *,int *) ;
 int svn_fs_delete (int *,char const*,int *) ;
 int svn_fs_make_file (int *,char const*,int *) ;

__attribute__((used)) static svn_error_t *
add_symlink_cb(void *baton,
               const char *relpath,
               const char *target,
               apr_hash_t *props,
               svn_revnum_t replaces_rev,
               apr_pool_t *scratch_pool)
{
  struct edit_baton *eb = baton;
  const char *fspath = FSPATH(relpath, scratch_pool);
  svn_fs_root_t *root;

  SVN_ERR(get_root(&root, eb));

  if (SVN_IS_VALID_REVNUM(replaces_rev))
    {
      SVN_ERR(can_modify(root, fspath, replaces_rev, scratch_pool));
      SVN_ERR(svn_fs_delete(root, fspath, scratch_pool));
    }
  else
    {
      SVN_ERR(can_create(root, fspath, scratch_pool));
    }
  SVN__NOT_IMPLEMENTED();
}
