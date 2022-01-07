
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int svn_fs_fs__id_part_t ;
typedef int svn_error_t ;
struct text_baton_t {int node; int path; TYPE_2__* root; int stream; int pool; int file_stream; } ;
struct TYPE_7__ {int node; } ;
typedef TYPE_1__ parent_path_t ;
typedef int apr_pool_t ;
struct TYPE_8__ {int txn_flags; int fs; } ;


 int FALSE ;
 int SVN_ERR (int ) ;
 int SVN_FS_TXN_CHECK_LOCKS ;
 int SVN_INVALID_REVNUM ;
 int TRUE ;
 int * add_change (int ,int const*,int ,int ,int ,int ,int ,int ,int ,int ,int *,int *) ;
 int make_path_mutable (TYPE_2__*,TYPE_1__*,int ,int *) ;
 int open_path (TYPE_1__**,TYPE_2__*,int ,int ,int ,int *) ;
 int * root_txn_id (TYPE_2__*) ;
 int svn_fs_fs__allow_locked_operation (int ,int ,int ,int ,int *) ;
 int svn_fs_fs__dag_get_edit_stream (int *,int ,int ) ;
 int svn_fs_fs__dag_get_id (int ) ;
 int svn_fs_path_change_modify ;
 int svn_node_file ;
 int svn_stream_create (struct text_baton_t*,int ) ;
 int svn_stream_set_close (int ,int ) ;
 int svn_stream_set_write (int ,int ) ;
 int text_stream_closer ;
 int text_stream_writer ;

__attribute__((used)) static svn_error_t *
apply_text(void *baton, apr_pool_t *pool)
{
  struct text_baton_t *tb = baton;
  parent_path_t *parent_path;
  const svn_fs_fs__id_part_t *txn_id = root_txn_id(tb->root);



  SVN_ERR(open_path(&parent_path, tb->root, tb->path, 0, TRUE, pool));



  if (tb->root->txn_flags & SVN_FS_TXN_CHECK_LOCKS)
    SVN_ERR(svn_fs_fs__allow_locked_operation(tb->path, tb->root->fs,
                                              FALSE, FALSE, pool));


  SVN_ERR(make_path_mutable(tb->root, parent_path, tb->path, pool));
  tb->node = parent_path->node;


  SVN_ERR(svn_fs_fs__dag_get_edit_stream(&(tb->file_stream), tb->node,
                                         tb->pool));


  tb->stream = svn_stream_create(tb, tb->pool);
  svn_stream_set_write(tb->stream, text_stream_writer);
  svn_stream_set_close(tb->stream, text_stream_closer);


  return add_change(tb->root->fs, txn_id, tb->path,
                    svn_fs_fs__dag_get_id(tb->node),
                    svn_fs_path_change_modify, TRUE, FALSE, FALSE,
                    svn_node_file, SVN_INVALID_REVNUM, ((void*)0), pool);
}
