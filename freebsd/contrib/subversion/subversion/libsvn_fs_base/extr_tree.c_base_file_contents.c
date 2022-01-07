
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int svn_stream_t ;
struct TYPE_6__ {int fs; } ;
typedef TYPE_1__ svn_fs_root_t ;
typedef int svn_error_t ;
struct TYPE_7__ {char const* path; int * file_stream; int * pool; TYPE_1__* root; } ;
typedef TYPE_2__ file_contents_baton_t ;
typedef int apr_pool_t ;


 int FALSE ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 TYPE_2__* apr_pcalloc (int *,int) ;
 int svn_fs_base__retry_txn (int ,int ,TYPE_2__*,int ,int *) ;
 int txn_body_get_file_contents ;

__attribute__((used)) static svn_error_t *
base_file_contents(svn_stream_t **contents,
                   svn_fs_root_t *root,
                   const char *path,
                   apr_pool_t *pool)
{
  file_contents_baton_t *fb = apr_pcalloc(pool, sizeof(*fb));
  fb->root = root;
  fb->path = path;
  fb->pool = pool;


  SVN_ERR(svn_fs_base__retry_txn(root->fs, txn_body_get_file_contents, fb,
                                 FALSE, pool));

  *contents = fb->file_stream;
  return SVN_NO_ERROR;
}
