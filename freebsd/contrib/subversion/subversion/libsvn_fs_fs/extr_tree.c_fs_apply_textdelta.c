
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {void* result_checksum; void* base_checksum; int * pool; int path; int * root; } ;
typedef TYPE_1__ txdelta_baton_t ;
typedef int svn_txdelta_window_handler_t ;
typedef int svn_fs_root_t ;
typedef int svn_error_t ;
typedef int svn_checksum_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int apply_textdelta (TYPE_1__*,int *) ;
 TYPE_1__* apr_pcalloc (int *,int) ;
 void* svn_checksum_dup (int *,int *) ;
 int svn_fs__canonicalize_abspath (char const*,int *) ;
 int window_consumer ;

__attribute__((used)) static svn_error_t *
fs_apply_textdelta(svn_txdelta_window_handler_t *contents_p,
                   void **contents_baton_p,
                   svn_fs_root_t *root,
                   const char *path,
                   svn_checksum_t *base_checksum,
                   svn_checksum_t *result_checksum,
                   apr_pool_t *pool)
{
  txdelta_baton_t *tb = apr_pcalloc(pool, sizeof(*tb));

  tb->root = root;
  tb->path = svn_fs__canonicalize_abspath(path, pool);
  tb->pool = pool;
  tb->base_checksum = svn_checksum_dup(base_checksum, pool);
  tb->result_checksum = svn_checksum_dup(result_checksum, pool);

  SVN_ERR(apply_textdelta(tb, pool));

  *contents_p = window_consumer;
  *contents_baton_p = tb;
  return SVN_NO_ERROR;
}
