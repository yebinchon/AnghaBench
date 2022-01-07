
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int fs; } ;
typedef TYPE_1__ svn_fs_root_t ;
typedef int svn_error_t ;
struct node_proplist_args {char const* path; TYPE_1__* root; int ** table_p; } ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;


 int FALSE ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int svn_fs_base__retry_txn (int ,int ,struct node_proplist_args*,int ,int *) ;
 int txn_body_node_proplist ;

__attribute__((used)) static svn_error_t *
base_node_proplist(apr_hash_t **table_p,
                   svn_fs_root_t *root,
                   const char *path,
                   apr_pool_t *pool)
{
  apr_hash_t *table;
  struct node_proplist_args args;

  args.table_p = &table;
  args.root = root;
  args.path = path;

  SVN_ERR(svn_fs_base__retry_txn(root->fs, txn_body_node_proplist, &args,
                                 FALSE, pool));

  *table_p = table;
  return SVN_NO_ERROR;
}
