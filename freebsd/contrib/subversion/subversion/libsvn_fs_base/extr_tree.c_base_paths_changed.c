
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int fs; } ;
typedef TYPE_1__ svn_fs_root_t ;
typedef int svn_error_t ;
struct paths_changed_args {int * changes; TYPE_1__* root; } ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;


 int FALSE ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int svn_fs_base__retry (int ,int ,struct paths_changed_args*,int ,int *) ;
 int txn_body_paths_changed ;

__attribute__((used)) static svn_error_t *
base_paths_changed(apr_hash_t **changed_paths_p,
                   svn_fs_root_t *root,
                   apr_pool_t *pool)
{
  struct paths_changed_args args;
  args.root = root;
  args.changes = ((void*)0);
  SVN_ERR(svn_fs_base__retry(root->fs, txn_body_paths_changed, &args,
                             FALSE, pool));
  *changed_paths_p = args.changes;
  return SVN_NO_ERROR;
}
