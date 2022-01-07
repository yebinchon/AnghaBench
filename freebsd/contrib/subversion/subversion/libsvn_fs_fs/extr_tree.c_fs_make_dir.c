
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_12__ {int txn_flags; int fs; } ;
typedef TYPE_1__ svn_fs_root_t ;
typedef int svn_fs_fs__id_part_t ;
typedef int svn_error_t ;
struct TYPE_13__ {int entry; struct TYPE_13__* parent; scalar_t__ node; } ;
typedef TYPE_2__ parent_path_t ;
typedef int dag_node_t ;
typedef int apr_pool_t ;


 int FALSE ;
 int SVN_ERR (int ) ;
 int SVN_FS_TXN_CHECK_LOCKS ;
 int * SVN_FS__ALREADY_EXISTS (TYPE_1__*,char const*) ;
 int SVN_INVALID_REVNUM ;
 int TRUE ;
 int * add_change (int ,int const*,char const*,int ,int ,int ,int ,int ,int ,int ,int *,int *) ;
 int check_newline (char const*,int *) ;
 int dag_node_cache_set (TYPE_1__*,int ,int *,int *) ;
 int make_path_mutable (TYPE_1__*,TYPE_2__*,char const*,int *) ;
 int open_path (TYPE_2__**,TYPE_1__*,char const*,int ,int ,int *) ;
 int open_path_last_optional ;
 int parent_path_path (TYPE_2__*,int *) ;
 int * root_txn_id (TYPE_1__*) ;
 char* svn_fs__canonicalize_abspath (char const*,int *) ;
 int svn_fs_fs__allow_locked_operation (char const*,int ,int ,int ,int *) ;
 int svn_fs_fs__dag_get_id (int *) ;
 int svn_fs_fs__dag_make_dir (int **,scalar_t__,int ,int ,int const*,int *) ;
 int svn_fs_path_change_add ;
 int svn_node_dir ;

__attribute__((used)) static svn_error_t *
fs_make_dir(svn_fs_root_t *root,
            const char *path,
            apr_pool_t *pool)
{
  parent_path_t *parent_path;
  dag_node_t *sub_dir;
  const svn_fs_fs__id_part_t *txn_id = root_txn_id(root);

  SVN_ERR(check_newline(path, pool));

  path = svn_fs__canonicalize_abspath(path, pool);
  SVN_ERR(open_path(&parent_path, root, path, open_path_last_optional,
                    TRUE, pool));




  if (root->txn_flags & SVN_FS_TXN_CHECK_LOCKS)
    SVN_ERR(svn_fs_fs__allow_locked_operation(path, root->fs, TRUE, FALSE,
                                              pool));



  if (parent_path->node)
    return SVN_FS__ALREADY_EXISTS(root, path);


  SVN_ERR(make_path_mutable(root, parent_path->parent, path, pool));
  SVN_ERR(svn_fs_fs__dag_make_dir(&sub_dir,
                                  parent_path->parent->node,
                                  parent_path_path(parent_path->parent,
                                                   pool),
                                  parent_path->entry,
                                  txn_id,
                                  pool));


  SVN_ERR(dag_node_cache_set(root, parent_path_path(parent_path, pool),
                             sub_dir, pool));


  return add_change(root->fs, txn_id, path, svn_fs_fs__dag_get_id(sub_dir),
                    svn_fs_path_change_add, FALSE, FALSE, FALSE,
                    svn_node_dir, SVN_INVALID_REVNUM, ((void*)0), pool);
}
