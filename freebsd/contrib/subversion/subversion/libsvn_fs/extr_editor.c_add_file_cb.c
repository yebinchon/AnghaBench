
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_stream_t ;
typedef int svn_revnum_t ;
typedef int svn_fs_root_t ;
typedef int svn_error_t ;
typedef int svn_checksum_t ;
struct edit_baton {int cancel_baton; int cancel_func; } ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;


 char* FSPATH (char const*,int *) ;
 int SVN_ERR (int ) ;
 scalar_t__ SVN_IS_VALID_REVNUM (int ) ;
 int * SVN_NO_ERROR ;
 int add_new_props (int *,char const*,int *,int *) ;
 int can_create (int *,char const*,int *) ;
 int can_modify (int *,char const*,int ,int *) ;
 int get_root (int **,struct edit_baton*) ;
 int set_text (int *,char const*,int const*,int *,int ,int ,int *) ;
 int svn_fs_delete (int *,char const*,int *) ;
 int svn_fs_make_file (int *,char const*,int *) ;

__attribute__((used)) static svn_error_t *
add_file_cb(void *baton,
            const char *relpath,
            const svn_checksum_t *checksum,
            svn_stream_t *contents,
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

  SVN_ERR(svn_fs_make_file(root, fspath, scratch_pool));

  SVN_ERR(set_text(root, fspath, checksum, contents,
                   eb->cancel_func, eb->cancel_baton, scratch_pool));
  SVN_ERR(add_new_props(root, fspath, props, scratch_pool));

  return SVN_NO_ERROR;
}
