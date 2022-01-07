
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
 int SVN_ERR_ASSERT (int ) ;
 int * SVN_NO_ERROR ;
 int alter_props (int *,char const*,int *,int *) ;
 int can_modify (int *,char const*,int ,int *) ;
 int get_root (int **,struct edit_baton*) ;
 int set_text (int *,char const*,int const*,int *,int ,int ,int *) ;

__attribute__((used)) static svn_error_t *
alter_file_cb(void *baton,
              const char *relpath,
              svn_revnum_t revision,
              const svn_checksum_t *checksum,
              svn_stream_t *contents,
              apr_hash_t *props,
              apr_pool_t *scratch_pool)
{
  struct edit_baton *eb = baton;
  const char *fspath = FSPATH(relpath, scratch_pool);
  svn_fs_root_t *root;

  SVN_ERR(get_root(&root, eb));
  SVN_ERR(can_modify(root, fspath, revision, scratch_pool));

  if (contents != ((void*)0))
    {
      SVN_ERR_ASSERT(checksum != ((void*)0));
      SVN_ERR(set_text(root, fspath, checksum, contents,
                       eb->cancel_func, eb->cancel_baton, scratch_pool));
    }

  if (props != ((void*)0))
    {
      SVN_ERR(alter_props(root, fspath, props, scratch_pool));
    }

  return SVN_NO_ERROR;
}
