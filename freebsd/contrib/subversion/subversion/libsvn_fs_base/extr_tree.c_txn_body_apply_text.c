
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_12__ {int pool; } ;
typedef TYPE_1__ trail_t ;
typedef int svn_error_t ;
struct text_baton_t {int stream; int pool; int node; int file_stream; int path; TYPE_7__* root; } ;
struct TYPE_13__ {int node; } ;
typedef TYPE_2__ parent_path_t ;
struct TYPE_14__ {char* txn; int txn_flags; } ;


 int FALSE ;
 int SVN_ERR (int ) ;
 int SVN_FS_TXN_CHECK_LOCKS ;
 int * SVN_NO_ERROR ;
 int make_path_mutable (TYPE_7__*,TYPE_2__*,int ,TYPE_1__*,int ) ;
 int open_path (TYPE_2__**,TYPE_7__*,int ,int ,char const*,TYPE_1__*,int ) ;
 int svn_fs_base__allow_locked_operation (int ,int ,TYPE_1__*,int ) ;
 int svn_fs_base__dag_get_edit_stream (int *,int ,char const*,TYPE_1__*,int ) ;
 int svn_stream_create (struct text_baton_t*,int ) ;
 int svn_stream_set_close (int ,int ) ;
 int svn_stream_set_write (int ,int ) ;
 int text_stream_closer ;
 int text_stream_writer ;

__attribute__((used)) static svn_error_t *
txn_body_apply_text(void *baton, trail_t *trail)
{
  struct text_baton_t *tb = baton;
  parent_path_t *parent_path;
  const char *txn_id = tb->root->txn;



  SVN_ERR(open_path(&parent_path, tb->root, tb->path, 0, txn_id,
                    trail, trail->pool));


  if (tb->root->txn_flags & SVN_FS_TXN_CHECK_LOCKS)
    SVN_ERR(svn_fs_base__allow_locked_operation(tb->path, FALSE,
                                                trail, trail->pool));


  SVN_ERR(make_path_mutable(tb->root, parent_path, tb->path,
                            trail, trail->pool));
  tb->node = parent_path->node;


  SVN_ERR(svn_fs_base__dag_get_edit_stream(&(tb->file_stream), tb->node,
                                           txn_id, trail, tb->pool));


  tb->stream = svn_stream_create(tb, tb->pool);
  svn_stream_set_write(tb->stream, text_stream_writer);
  svn_stream_set_close(tb->stream, text_stream_closer);

  return SVN_NO_ERROR;
}
