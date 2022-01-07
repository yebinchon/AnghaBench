
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int svn_fs_t ;
struct TYPE_4__ {int * fs; } ;
typedef TYPE_1__ svn_fs_root_t ;
typedef int svn_error_t ;
struct closest_copy_args {char const** path_p; char const* path; int * pool; TYPE_1__* root; TYPE_1__** root_p; } ;
typedef int apr_pool_t ;


 int FALSE ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int svn_fs_base__retry_txn (int *,int ,struct closest_copy_args*,int ,int *) ;
 int txn_body_closest_copy ;

__attribute__((used)) static svn_error_t *
base_closest_copy(svn_fs_root_t **root_p,
                  const char **path_p,
                  svn_fs_root_t *root,
                  const char *path,
                  apr_pool_t *pool)
{
  struct closest_copy_args args;
  svn_fs_t *fs = root->fs;
  svn_fs_root_t *closest_root = ((void*)0);
  const char *closest_path = ((void*)0);

  args.root_p = &closest_root;
  args.path_p = &closest_path;
  args.root = root;
  args.path = path;
  args.pool = pool;
  SVN_ERR(svn_fs_base__retry_txn(fs, txn_body_closest_copy, &args,
                                 FALSE, pool));
  *root_p = closest_root;
  *path_p = closest_path;
  return SVN_NO_ERROR;
}
