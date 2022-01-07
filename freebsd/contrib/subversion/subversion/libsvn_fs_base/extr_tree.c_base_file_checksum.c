
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int fs; } ;
typedef TYPE_1__ svn_fs_root_t ;
typedef int svn_error_t ;
typedef int svn_checksum_t ;
typedef int svn_checksum_kind_t ;
struct file_checksum_args {char const* path; int ** checksum; int kind; TYPE_1__* root; } ;
typedef int apr_pool_t ;


 int FALSE ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int * svn_checksum_dup (int *,int *) ;
 int svn_fs_base__retry_txn (int ,int ,struct file_checksum_args*,int ,int *) ;
 int * svn_pool_create (int *) ;
 int svn_pool_destroy (int *) ;
 int txn_body_file_checksum ;

__attribute__((used)) static svn_error_t *
base_file_checksum(svn_checksum_t **checksum,
                   svn_checksum_kind_t kind,
                   svn_fs_root_t *root,
                   const char *path,
                   apr_pool_t *pool)
{
  struct file_checksum_args args;
  apr_pool_t *scratch_pool = svn_pool_create(pool);

  args.root = root;
  args.path = path;
  args.kind = kind;
  args.checksum = checksum;
  SVN_ERR(svn_fs_base__retry_txn(root->fs, txn_body_file_checksum, &args,
                                 FALSE, scratch_pool));
  *checksum = svn_checksum_dup(*checksum, pool);
  svn_pool_destroy(scratch_pool);
  return SVN_NO_ERROR;
}
