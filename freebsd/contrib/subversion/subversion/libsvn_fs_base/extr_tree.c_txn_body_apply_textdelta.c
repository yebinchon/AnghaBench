
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_3__ ;
typedef struct TYPE_21__ TYPE_2__ ;
typedef struct TYPE_20__ TYPE_1__ ;
typedef struct TYPE_19__ TYPE_13__ ;
typedef struct TYPE_18__ TYPE_10__ ;


struct TYPE_20__ {int interpreter_baton; int interpreter; int pool; int path; int string_stream; int source_stream; int target_string; int node; int target_stream; TYPE_10__* base_checksum; TYPE_13__* root; } ;
typedef TYPE_1__ txdelta_baton_t ;
struct TYPE_21__ {int pool; } ;
typedef TYPE_2__ trail_t ;
typedef int svn_error_t ;
typedef int svn_checksum_t ;
struct TYPE_22__ {int node; } ;
typedef TYPE_3__ parent_path_t ;
struct TYPE_19__ {char* txn; int txn_flags; } ;
struct TYPE_18__ {int kind; } ;


 int FALSE ;
 int SVN_ERR (int ) ;
 int SVN_FS_TXN_CHECK_LOCKS ;
 int * SVN_NO_ERROR ;
 int _ (char*) ;
 int make_path_mutable (TYPE_13__*,TYPE_3__*,int ,TYPE_2__*,int ) ;
 int open_path (TYPE_3__**,TYPE_13__*,int ,int ,char const*,TYPE_2__*,int ) ;
 int svn_checksum_match (TYPE_10__*,int *) ;
 int * svn_checksum_mismatch_err (TYPE_10__*,int *,int ,int ,int ) ;
 int svn_fs_base__allow_locked_operation (int ,int ,TYPE_2__*,int ) ;
 int svn_fs_base__dag_file_checksum (int **,int ,int ,TYPE_2__*,int ) ;
 int svn_fs_base__dag_get_contents (int *,int ,TYPE_2__*,int ) ;
 int svn_fs_base__dag_get_edit_stream (int *,int ,char const*,TYPE_2__*,int ) ;
 int svn_stream_create (TYPE_1__*,int ) ;
 int svn_stream_set_write (int ,int ) ;
 int svn_stringbuf_create_empty (int ) ;
 int svn_txdelta_apply (int ,int ,int *,int ,int ,int *,int *) ;
 int write_to_string ;

__attribute__((used)) static svn_error_t *
txn_body_apply_textdelta(void *baton, trail_t *trail)
{
  txdelta_baton_t *tb = (txdelta_baton_t *) baton;
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

  if (tb->base_checksum)
    {
      svn_checksum_t *checksum;



      SVN_ERR(svn_fs_base__dag_file_checksum(&checksum,
                                             tb->base_checksum->kind,
                                             tb->node, trail, trail->pool));




      if (!svn_checksum_match(tb->base_checksum, checksum))
        return svn_checksum_mismatch_err(tb->base_checksum, checksum,
                            trail->pool,
                            _("Base checksum mismatch on '%s'"),
                            tb->path);
    }




  SVN_ERR(svn_fs_base__dag_get_contents(&(tb->source_stream),
                                        tb->node, trail, tb->pool));


  SVN_ERR(svn_fs_base__dag_get_edit_stream(&(tb->target_stream), tb->node,
                                           txn_id, trail, tb->pool));



  tb->target_string = svn_stringbuf_create_empty(tb->pool);
  tb->string_stream = svn_stream_create(tb, tb->pool);
  svn_stream_set_write(tb->string_stream, write_to_string);


  svn_txdelta_apply(tb->source_stream,
                    tb->string_stream,
                    ((void*)0),
                    tb->path,
                    tb->pool,
                    &(tb->interpreter),
                    &(tb->interpreter_baton));

  return SVN_NO_ERROR;
}
