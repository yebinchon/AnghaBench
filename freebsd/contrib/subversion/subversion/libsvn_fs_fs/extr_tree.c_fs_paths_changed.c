
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int rev; int fs; scalar_t__ is_txn_root; } ;
typedef TYPE_1__ svn_fs_root_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;


 int root_txn_id (TYPE_1__*) ;
 int * svn_fs_fs__paths_changed (int **,int ,int ,int *) ;
 int * svn_fs_fs__txn_changes_fetch (int **,int ,int ,int *) ;

__attribute__((used)) static svn_error_t *
fs_paths_changed(apr_hash_t **changed_paths_p,
                 svn_fs_root_t *root,
                 apr_pool_t *pool)
{
  if (root->is_txn_root)
    return svn_fs_fs__txn_changes_fetch(changed_paths_p, root->fs,
                                        root_txn_id(root), pool);
  else
    return svn_fs_fs__paths_changed(changed_paths_p, root->fs, root->rev,
                                    pool);
}
