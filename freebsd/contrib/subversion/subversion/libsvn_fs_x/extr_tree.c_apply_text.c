
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int path; TYPE_4__* root; int stream; int pool; int node; int file_stream; } ;
typedef TYPE_1__ text_baton_t ;
typedef int svn_fs_x__txn_id_t ;
struct TYPE_10__ {int node; } ;
typedef TYPE_2__ svn_fs_x__dag_path_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;
struct TYPE_11__ {int txn_flags; int fs; } ;


 int FALSE ;
 int SVN_ERR (int ) ;
 int SVN_FS_TXN_CHECK_LOCKS ;
 int SVN_INVALID_REVNUM ;
 int TRUE ;
 int * add_change (int ,int ,int ,int ,int ,int ,int ,int ,int ,int *,int *) ;
 int svn_fs_path_change_modify ;
 int svn_fs_x__allow_locked_operation (int ,int ,int ,int ,int *) ;
 int svn_fs_x__dag_dup (int ,int ) ;
 int svn_fs_x__dag_get_edit_stream (int *,int ,int ) ;
 int svn_fs_x__get_dag_path (TYPE_2__**,TYPE_4__*,int ,int ,int ,int *,int *) ;
 int svn_fs_x__make_path_mutable (TYPE_4__*,TYPE_2__*,int ,int *,int *) ;
 int svn_fs_x__root_txn_id (TYPE_4__*) ;
 int svn_node_file ;
 int svn_stream_create (TYPE_1__*,int ) ;
 int svn_stream_set_close (int ,int ) ;
 int svn_stream_set_write (int ,int ) ;
 int text_stream_closer ;
 int text_stream_writer ;

__attribute__((used)) static svn_error_t *
apply_text(void *baton,
           apr_pool_t *scratch_pool)
{
  text_baton_t *tb = baton;
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


  SVN_ERR(svn_fs_x__dag_get_edit_stream(&(tb->file_stream), tb->node,
                                        tb->pool));


  tb->stream = svn_stream_create(tb, tb->pool);
  svn_stream_set_write(tb->stream, text_stream_writer);
  svn_stream_set_close(tb->stream, text_stream_closer);


  return add_change(tb->root->fs, txn_id, tb->path,
                    svn_fs_path_change_modify, TRUE, FALSE, FALSE,
                    svn_node_file, SVN_INVALID_REVNUM, ((void*)0), scratch_pool);
}
