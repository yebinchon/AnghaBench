
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int svn_string_t ;
struct TYPE_4__ {int fs; int is_txn_root; } ;
typedef TYPE_1__ svn_fs_root_t ;
typedef int svn_error_t ;
struct change_node_prop_args {char const* path; char const* name; int const* value; TYPE_1__* root; } ;
typedef int apr_pool_t ;


 int * SVN_FS__NOT_TXN (TYPE_1__*) ;
 int TRUE ;
 int * svn_fs_base__retry_txn (int ,int ,struct change_node_prop_args*,int ,int *) ;
 int txn_body_change_node_prop ;

__attribute__((used)) static svn_error_t *
base_change_node_prop(svn_fs_root_t *root,
                      const char *path,
                      const char *name,
                      const svn_string_t *value,
                      apr_pool_t *pool)
{
  struct change_node_prop_args args;

  if (! root->is_txn_root)
    return SVN_FS__NOT_TXN(root);

  args.root = root;
  args.path = path;
  args.name = name;
  args.value = value;
  return svn_fs_base__retry_txn(root->fs, txn_body_change_node_prop, &args,
                                TRUE, pool);
}
