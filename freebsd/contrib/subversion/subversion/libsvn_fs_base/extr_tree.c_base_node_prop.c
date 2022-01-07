
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int svn_string_t ;
struct TYPE_3__ {int fs; } ;
typedef TYPE_1__ svn_fs_root_t ;
typedef int svn_error_t ;
struct node_prop_args {char const* path; char const* propname; TYPE_1__* root; int ** value_p; } ;
typedef int apr_pool_t ;


 int FALSE ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int svn_fs_base__retry_txn (int ,int ,struct node_prop_args*,int ,int *) ;
 int * svn_pool_create (int *) ;
 int svn_pool_destroy (int *) ;
 int * svn_string_dup (int *,int *) ;
 int txn_body_node_prop ;

__attribute__((used)) static svn_error_t *
base_node_prop(svn_string_t **value_p,
               svn_fs_root_t *root,
               const char *path,
               const char *propname,
               apr_pool_t *pool)
{
  struct node_prop_args args;
  svn_string_t *value;
  apr_pool_t *scratch_pool = svn_pool_create(pool);

  args.value_p = &value;
  args.root = root;
  args.path = path;
  args.propname = propname;
  SVN_ERR(svn_fs_base__retry_txn(root->fs, txn_body_node_prop, &args,
                                 FALSE, scratch_pool));
  *value_p = svn_string_dup(value, pool);
  svn_pool_destroy(scratch_pool);
  return SVN_NO_ERROR;
}
