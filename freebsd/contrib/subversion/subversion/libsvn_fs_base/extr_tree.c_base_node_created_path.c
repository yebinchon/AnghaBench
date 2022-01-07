
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int fs; } ;
typedef TYPE_1__ svn_fs_root_t ;
typedef int svn_error_t ;
struct node_created_path_args {char const** created_path; char const* path; TYPE_1__* root; } ;
typedef int apr_pool_t ;


 int FALSE ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 char* apr_pstrdup (int *,char const*) ;
 int svn_fs_base__retry_txn (int ,int ,struct node_created_path_args*,int ,int *) ;
 int * svn_pool_create (int *) ;
 int svn_pool_destroy (int *) ;
 int txn_body_node_created_path ;

__attribute__((used)) static svn_error_t *
base_node_created_path(const char **created_path,
                       svn_fs_root_t *root,
                       const char *path,
                       apr_pool_t *pool)
{
  struct node_created_path_args args;
  apr_pool_t *scratch_pool = svn_pool_create(pool);

  args.created_path = created_path;
  args.root = root;
  args.path = path;

  SVN_ERR(svn_fs_base__retry_txn(root->fs, txn_body_node_created_path, &args,
                                 FALSE, scratch_pool));
  if (*created_path)
    *created_path = apr_pstrdup(pool, *created_path);
  svn_pool_destroy(scratch_pool);
  return SVN_NO_ERROR;
}
