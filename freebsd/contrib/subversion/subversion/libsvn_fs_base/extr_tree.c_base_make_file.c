
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int fs; } ;
typedef TYPE_1__ svn_fs_root_t ;
typedef int svn_error_t ;
struct make_file_args {char const* path; TYPE_1__* root; } ;
typedef int apr_pool_t ;


 int TRUE ;
 int * svn_fs_base__retry_txn (int ,int ,struct make_file_args*,int ,int *) ;
 int txn_body_make_file ;

__attribute__((used)) static svn_error_t *
base_make_file(svn_fs_root_t *root,
               const char *path,
               apr_pool_t *pool)
{
  struct make_file_args args;

  args.root = root;
  args.path = path;
  return svn_fs_base__retry_txn(root->fs, txn_body_make_file, &args,
                                TRUE, pool);
}
