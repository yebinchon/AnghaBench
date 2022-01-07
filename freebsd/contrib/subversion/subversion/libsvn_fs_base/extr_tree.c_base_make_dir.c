
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int fs; int is_txn_root; } ;
typedef TYPE_1__ svn_fs_root_t ;
typedef int svn_error_t ;
struct make_dir_args {char const* path; TYPE_1__* root; } ;
typedef int apr_pool_t ;


 int * SVN_FS__NOT_TXN (TYPE_1__*) ;
 int TRUE ;
 int * svn_fs_base__retry_txn (int ,int ,struct make_dir_args*,int ,int *) ;
 int txn_body_make_dir ;

__attribute__((used)) static svn_error_t *
base_make_dir(svn_fs_root_t *root,
              const char *path,
              apr_pool_t *pool)
{
  struct make_dir_args args;

  if (! root->is_txn_root)
    return SVN_FS__NOT_TXN(root);

  args.root = root;
  args.path = path;
  return svn_fs_base__retry_txn(root->fs, txn_body_make_dir, &args,
                                TRUE, pool);
}
