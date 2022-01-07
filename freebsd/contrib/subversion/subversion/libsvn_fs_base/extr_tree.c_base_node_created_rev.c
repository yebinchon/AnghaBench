
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int svn_revnum_t ;
struct TYPE_3__ {int fs; } ;
typedef TYPE_1__ svn_fs_root_t ;
typedef int svn_error_t ;
struct node_created_rev_args {char const* path; int revision; TYPE_1__* root; } ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int SVN_INVALID_REVNUM ;
 int * SVN_NO_ERROR ;
 int TRUE ;
 int svn_fs_base__retry_txn (int ,int ,struct node_created_rev_args*,int ,int *) ;
 int txn_body_node_created_rev ;

__attribute__((used)) static svn_error_t *
base_node_created_rev(svn_revnum_t *revision,
                      svn_fs_root_t *root,
                      const char *path,
                      apr_pool_t *pool)
{
  struct node_created_rev_args args;

  args.revision = SVN_INVALID_REVNUM;
  args.root = root;
  args.path = path;
  SVN_ERR(svn_fs_base__retry_txn
          (root->fs, txn_body_node_created_rev, &args, TRUE, pool));
  *revision = args.revision;
  return SVN_NO_ERROR;
}
