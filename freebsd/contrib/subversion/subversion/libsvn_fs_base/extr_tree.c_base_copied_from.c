
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int svn_revnum_t ;
struct TYPE_3__ {int fs; } ;
typedef TYPE_1__ svn_fs_root_t ;
typedef int svn_error_t ;
struct copied_from_args {char const* path; scalar_t__ result_path; int result_rev; int * pool; TYPE_1__* root; } ;
typedef int apr_pool_t ;


 int FALSE ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 char* apr_pstrdup (int *,scalar_t__) ;
 int svn_fs_base__retry_txn (int ,int ,struct copied_from_args*,int ,int *) ;
 int * svn_pool_create (int *) ;
 int svn_pool_destroy (int *) ;
 int txn_body_copied_from ;

__attribute__((used)) static svn_error_t *
base_copied_from(svn_revnum_t *rev_p,
                 const char **path_p,
                 svn_fs_root_t *root,
                 const char *path,
                 apr_pool_t *pool)
{
  struct copied_from_args args;
  apr_pool_t *scratch_pool = svn_pool_create(pool);
  args.root = root;
  args.path = path;
  args.pool = pool;

  SVN_ERR(svn_fs_base__retry_txn(root->fs, txn_body_copied_from, &args,
                                 FALSE, scratch_pool));

  *rev_p = args.result_rev;
  *path_p = args.result_path ? apr_pstrdup(pool, args.result_path) : ((void*)0);

  svn_pool_destroy(scratch_pool);
  return SVN_NO_ERROR;
}
