
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_8__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {int path; TYPE_3__* root; int interpreter_baton; int interpreter; int pool; int target_stream; int source_stream; int node; TYPE_8__* base_checksum; } ;
typedef TYPE_1__ txdelta_baton_t ;
typedef int svn_fs_x__txn_id_t ;
struct TYPE_11__ {int node; } ;
typedef TYPE_2__ svn_fs_x__dag_path_t ;
typedef int svn_error_t ;
typedef int svn_checksum_t ;
typedef int apr_pool_t ;
struct TYPE_13__ {int kind; } ;
struct TYPE_12__ {int txn_flags; int fs; } ;


 int FALSE ;
 int SVN_ERR (int ) ;
 int SVN_FS_TXN_CHECK_LOCKS ;
 int SVN_INVALID_REVNUM ;
 int TRUE ;
 int _ (char*) ;
 int * add_change (int ,int ,int ,int ,int ,int ,int ,int ,int ,int *,int *) ;
 int svn_checksum_match (TYPE_8__*,int *) ;
 int * svn_checksum_mismatch_err (TYPE_8__*,int *,int *,int ,int ) ;
 int svn_fs_path_change_modify ;
 int svn_fs_x__allow_locked_operation (int ,int ,int ,int ,int *) ;
 int svn_fs_x__dag_dup (int ,int ) ;
 int svn_fs_x__dag_file_checksum (int **,int ,int ,int *) ;
 int svn_fs_x__dag_get_contents (int *,int ,int ) ;
 int svn_fs_x__dag_get_edit_stream (int *,int ,int ) ;
 int svn_fs_x__get_dag_path (TYPE_2__**,TYPE_3__*,int ,int ,int ,int *,int *) ;
 int svn_fs_x__make_path_mutable (TYPE_3__*,TYPE_2__*,int ,int *,int *) ;
 int svn_fs_x__root_txn_id (TYPE_3__*) ;
 int svn_node_file ;
 int svn_txdelta_apply (int ,int ,int *,int ,int ,int *,int *) ;

__attribute__((used)) static svn_error_t *
apply_textdelta(void *baton,
                apr_pool_t *scratch_pool)
{
  txdelta_baton_t *tb = (txdelta_baton_t *) baton;
  svn_fs_x__dag_path_t *dag_path;
  svn_fs_x__txn_id_t txn_id = svn_fs_x__root_txn_id(tb->root);



  SVN_ERR(svn_fs_x__get_dag_path(&dag_path, tb->root, tb->path, 0, TRUE,
                                 scratch_pool, scratch_pool));



  if (tb->root->txn_flags & SVN_FS_TXN_CHECK_LOCKS)
    SVN_ERR(svn_fs_x__allow_locked_operation(tb->path, tb->root->fs,
                                             FALSE, FALSE, scratch_pool));


  SVN_ERR(svn_fs_x__make_path_mutable(tb->root, dag_path, tb->path,
                                      scratch_pool, scratch_pool));
  tb->node = svn_fs_x__dag_dup(dag_path->node, tb->pool);

  if (tb->base_checksum)
    {
      svn_checksum_t *checksum;



      SVN_ERR(svn_fs_x__dag_file_checksum(&checksum, tb->node,
                                          tb->base_checksum->kind,
                                          scratch_pool));
      if (!svn_checksum_match(tb->base_checksum, checksum))
        return svn_checksum_mismatch_err(tb->base_checksum, checksum,
                                         scratch_pool,
                                         _("Base checksum mismatch on '%s'"),
                                         tb->path);
    }




  SVN_ERR(svn_fs_x__dag_get_contents(&(tb->source_stream),
                                     tb->node, tb->pool));


  SVN_ERR(svn_fs_x__dag_get_edit_stream(&(tb->target_stream), tb->node,
                                        tb->pool));


  svn_txdelta_apply(tb->source_stream,
                    tb->target_stream,
                    ((void*)0),
                    tb->path,
                    tb->pool,
                    &(tb->interpreter),
                    &(tb->interpreter_baton));


  return add_change(tb->root->fs, txn_id, tb->path,
                    svn_fs_path_change_modify, TRUE, FALSE, FALSE,
                    svn_node_file, SVN_INVALID_REVNUM, ((void*)0), scratch_pool);
}
