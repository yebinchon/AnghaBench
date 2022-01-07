
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * stream; int result_checksum; int * pool; int path; int * root; } ;
typedef TYPE_1__ text_baton_t ;
typedef int svn_stream_t ;
typedef int svn_fs_root_t ;
typedef int svn_error_t ;
typedef int svn_checksum_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int apply_text (TYPE_1__*,int *) ;
 TYPE_1__* apr_pcalloc (int *,int) ;
 int svn_checksum_dup (int *,int *) ;
 int svn_fs__canonicalize_abspath (char const*,int *) ;
 int * svn_pool_create (int *) ;
 int svn_pool_destroy (int *) ;

__attribute__((used)) static svn_error_t *
x_apply_text(svn_stream_t **contents_p,
             svn_fs_root_t *root,
             const char *path,
             svn_checksum_t *result_checksum,
             apr_pool_t *pool)
{
  apr_pool_t *scratch_pool = svn_pool_create(pool);
  text_baton_t *tb = apr_pcalloc(pool, sizeof(*tb));

  tb->root = root;
  tb->path = svn_fs__canonicalize_abspath(path, pool);
  tb->pool = pool;
  tb->result_checksum = svn_checksum_dup(result_checksum, pool);

  SVN_ERR(apply_text(tb, scratch_pool));

  *contents_p = tb->stream;

  svn_pool_destroy(scratch_pool);
  return SVN_NO_ERROR;
}
