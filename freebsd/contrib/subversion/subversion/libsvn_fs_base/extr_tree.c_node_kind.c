
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int svn_node_kind_t ;
struct TYPE_4__ {int fs; } ;
typedef TYPE_1__ svn_fs_root_t ;
typedef int svn_fs_id_t ;
typedef int svn_error_t ;
struct node_kind_args {int kind; int const* id; } ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int TRUE ;
 int base_node_id (int const**,TYPE_1__*,char const*,int *) ;
 int svn_fs_base__retry_txn (int ,int ,struct node_kind_args*,int ,int *) ;
 int txn_body_node_kind ;

__attribute__((used)) static svn_error_t *
node_kind(svn_node_kind_t *kind_p,
          svn_fs_root_t *root,
          const char *path,
          apr_pool_t *pool)
{
  struct node_kind_args args;
  const svn_fs_id_t *node_id;


  SVN_ERR(base_node_id(&node_id, root, path, pool));


  args.id = node_id;
  SVN_ERR(svn_fs_base__retry_txn(root->fs, txn_body_node_kind, &args,
                                 TRUE, pool));

  *kind_p = args.kind;
  return SVN_NO_ERROR;
}
