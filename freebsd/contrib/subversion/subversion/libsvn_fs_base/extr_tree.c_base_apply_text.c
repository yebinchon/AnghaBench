
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int svn_stream_t ;
struct TYPE_3__ {int fs; } ;
typedef TYPE_1__ svn_fs_root_t ;
typedef int svn_error_t ;
typedef int svn_checksum_t ;
struct text_baton_t {char const* path; int * stream; int result_checksum; int * pool; TYPE_1__* root; } ;
typedef int apr_pool_t ;


 int FALSE ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 struct text_baton_t* apr_pcalloc (int *,int) ;
 int svn_checksum_dup (int *,int *) ;
 int svn_fs_base__retry_txn (int ,int ,struct text_baton_t*,int ,int *) ;
 int txn_body_apply_text ;

__attribute__((used)) static svn_error_t *
base_apply_text(svn_stream_t **contents_p,
                svn_fs_root_t *root,
                const char *path,
                svn_checksum_t *result_checksum,
                apr_pool_t *pool)
{
  struct text_baton_t *tb = apr_pcalloc(pool, sizeof(*tb));

  tb->root = root;
  tb->path = path;
  tb->pool = pool;
  tb->result_checksum = svn_checksum_dup(result_checksum, pool);

  SVN_ERR(svn_fs_base__retry_txn(root->fs, txn_body_apply_text, tb,
                                 FALSE, pool));

  *contents_p = tb->stream;
  return SVN_NO_ERROR;
}
