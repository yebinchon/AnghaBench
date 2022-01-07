
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int svn_fs_x__txn_id_t ;
struct TYPE_11__ {int entry; TYPE_6__* parent; scalar_t__ node; } ;
typedef TYPE_1__ svn_fs_x__dag_path_t ;
struct TYPE_12__ {int txn_flags; int fs; } ;
typedef TYPE_2__ svn_fs_root_t ;
typedef int svn_error_t ;
typedef int dag_node_t ;
typedef int apr_pool_t ;
struct TYPE_13__ {int node; } ;


 int FALSE ;
 int SVN_ERR (int ) ;
 int SVN_FS_TXN_CHECK_LOCKS ;
 int * SVN_FS__ALREADY_EXISTS (TYPE_2__*,char const*) ;
 int SVN_INVALID_REVNUM ;
 int * SVN_NO_ERROR ;
 int TRUE ;
 int add_change (int ,int ,char const*,int ,int ,int ,int ,int ,int ,int *,int *) ;
 int parent_path_path (TYPE_6__*,int *) ;
 int svn_fs_path_change_add ;
 int svn_fs_x__allow_locked_operation (char const*,int ,int ,int ,int *) ;
 int svn_fs_x__dag_make_dir (int **,int ,int ,int ,int ,int *,int *) ;
 int svn_fs_x__dag_path_last_optional ;
 int svn_fs_x__get_dag_path (TYPE_1__**,TYPE_2__*,char const*,int ,int ,int *,int *) ;
 int svn_fs_x__make_path_mutable (TYPE_2__*,TYPE_6__*,char const*,int *,int *) ;
 int svn_fs_x__root_txn_id (TYPE_2__*) ;
 int svn_fs_x__update_dag_cache (int *) ;
 int svn_node_dir ;
 int * svn_pool_create (int *) ;
 int svn_pool_destroy (int *) ;

__attribute__((used)) static svn_error_t *
x_make_dir(svn_fs_root_t *root,
           const char *path,
           apr_pool_t *scratch_pool)
{
  svn_fs_x__dag_path_t *dag_path;
  dag_node_t *sub_dir;
  svn_fs_x__txn_id_t txn_id = svn_fs_x__root_txn_id(root);
  apr_pool_t *subpool = svn_pool_create(scratch_pool);

  SVN_ERR(svn_fs_x__get_dag_path(&dag_path, root, path,
                                 svn_fs_x__dag_path_last_optional,
                                 TRUE, subpool, subpool));




  if (root->txn_flags & SVN_FS_TXN_CHECK_LOCKS)
    SVN_ERR(svn_fs_x__allow_locked_operation(path, root->fs, TRUE, FALSE,
                                             subpool));



  if (dag_path->node)
    return SVN_FS__ALREADY_EXISTS(root, path);


  SVN_ERR(svn_fs_x__make_path_mutable(root, dag_path->parent, path, subpool,
                                      subpool));
  SVN_ERR(svn_fs_x__dag_make_dir(&sub_dir,
                                 dag_path->parent->node,
                                 parent_path_path(dag_path->parent,
                                                  subpool),
                                 dag_path->entry,
                                 txn_id,
                                 subpool, subpool));


  svn_fs_x__update_dag_cache(sub_dir);


  SVN_ERR(add_change(root->fs, txn_id, path,
                     svn_fs_path_change_add, FALSE, FALSE, FALSE,
                     svn_node_dir, SVN_INVALID_REVNUM, ((void*)0), subpool));

  svn_pool_destroy(subpool);
  return SVN_NO_ERROR;
}
