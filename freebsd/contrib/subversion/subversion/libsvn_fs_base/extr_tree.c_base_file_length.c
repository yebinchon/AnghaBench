
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int fs; } ;
typedef TYPE_1__ svn_fs_root_t ;
typedef int svn_filesize_t ;
typedef int svn_error_t ;
struct file_length_args {char const* path; int length; TYPE_1__* root; } ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int TRUE ;
 int svn_fs_base__retry_txn (int ,int ,struct file_length_args*,int ,int *) ;
 int txn_body_file_length ;

__attribute__((used)) static svn_error_t *
base_file_length(svn_filesize_t *length_p,
                 svn_fs_root_t *root,
                 const char *path,
                 apr_pool_t *pool)
{
  struct file_length_args args;

  args.root = root;
  args.path = path;
  SVN_ERR(svn_fs_base__retry_txn(root->fs, txn_body_file_length, &args,
                                 TRUE, pool));

  *length_p = args.length;
  return SVN_NO_ERROR;
}
