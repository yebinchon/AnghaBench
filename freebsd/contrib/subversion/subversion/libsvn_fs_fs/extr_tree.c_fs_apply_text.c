
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_stream_t ;
typedef int svn_fs_root_t ;
typedef int svn_error_t ;
typedef int svn_checksum_t ;
struct text_baton_t {int * stream; int result_checksum; int * pool; int path; int * root; } ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int apply_text (struct text_baton_t*,int *) ;
 struct text_baton_t* apr_pcalloc (int *,int) ;
 int svn_checksum_dup (int *,int *) ;
 int svn_fs__canonicalize_abspath (char const*,int *) ;

__attribute__((used)) static svn_error_t *
fs_apply_text(svn_stream_t **contents_p,
              svn_fs_root_t *root,
              const char *path,
              svn_checksum_t *result_checksum,
              apr_pool_t *pool)
{
  struct text_baton_t *tb = apr_pcalloc(pool, sizeof(*tb));

  tb->root = root;
  tb->path = svn_fs__canonicalize_abspath(path, pool);
  tb->pool = pool;
  tb->result_checksum = svn_checksum_dup(result_checksum, pool);

  SVN_ERR(apply_text(tb, pool));

  *contents_p = tb->stream;
  return SVN_NO_ERROR;
}
