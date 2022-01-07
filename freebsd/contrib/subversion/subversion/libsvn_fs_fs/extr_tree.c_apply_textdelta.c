
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {int node; int path; TYPE_5__* root; int interpreter_baton; int interpreter; int pool; int target_stream; int source_stream; TYPE_3__* base_checksum; } ;
typedef TYPE_1__ txdelta_baton_t ;
typedef int svn_fs_fs__id_part_t ;
typedef int svn_error_t ;
typedef int svn_checksum_t ;
struct TYPE_11__ {int node; } ;
typedef TYPE_2__ parent_path_t ;
typedef int apr_pool_t ;
struct TYPE_13__ {int txn_flags; int fs; } ;
struct TYPE_12__ {int kind; } ;


 int FALSE ;
 int SVN_ERR (int ) ;
 int SVN_FS_TXN_CHECK_LOCKS ;
 int SVN_INVALID_REVNUM ;
 int TRUE ;
 int _ (char*) ;
 int * add_change (int ,int const*,int ,int ,int ,int ,int ,int ,int ,int ,int *,int *) ;
 int make_path_mutable (TYPE_5__*,TYPE_2__*,int ,int *) ;
 int open_path (TYPE_2__**,TYPE_5__*,int ,int ,int ,int *) ;
 int * root_txn_id (TYPE_5__*) ;
 int svn_checksum_match (TYPE_3__*,int *) ;
 int * svn_checksum_mismatch_err (TYPE_3__*,int *,int *,int ,int ) ;
 int svn_fs_fs__allow_locked_operation (int ,int ,int ,int ,int *) ;
 int svn_fs_fs__dag_file_checksum (int **,int ,int ,int *) ;
 int svn_fs_fs__dag_get_contents (int *,int ,int ) ;
 int svn_fs_fs__dag_get_edit_stream (int *,int ,int ) ;
 int svn_fs_fs__dag_get_id (int ) ;
 int svn_fs_path_change_modify ;
 int svn_node_file ;
 int svn_txdelta_apply (int ,int ,int *,int ,int ,int *,int *) ;

__attribute__((used)) static svn_error_t *
apply_textdelta(void *baton, apr_pool_t *pool)
{
  txdelta_baton_t *tb = (txdelta_baton_t *) baton;
  parent_path_t *parent_path;
  const svn_fs_fs__id_part_t *txn_id = root_txn_id(tb->root);



  SVN_ERR(open_path(&parent_path, tb->root, tb->path, 0, TRUE, pool));



  if (tb->root->txn_flags & SVN_FS_TXN_CHECK_LOCKS)
    SVN_ERR(svn_fs_fs__allow_locked_operation(tb->path, tb->root->fs,
                                              FALSE, FALSE, pool));


  SVN_ERR(make_path_mutable(tb->root, parent_path, tb->path, pool));
  tb->node = parent_path->node;

  if (tb->base_checksum)
    {
      svn_checksum_t *checksum;



      SVN_ERR(svn_fs_fs__dag_file_checksum(&checksum, tb->node,
                                           tb->base_checksum->kind, pool));
      if (!svn_checksum_match(tb->base_checksum, checksum))
        return svn_checksum_mismatch_err(tb->base_checksum, checksum, pool,
                                         _("Base checksum mismatch on '%s'"),
                                         tb->path);
    }




  SVN_ERR(svn_fs_fs__dag_get_contents(&(tb->source_stream),
                                      tb->node, tb->pool));


  SVN_ERR(svn_fs_fs__dag_get_edit_stream(&(tb->target_stream), tb->node,
                                         tb->pool));


  svn_txdelta_apply(tb->source_stream,
                    tb->target_stream,
                    ((void*)0),
                    tb->path,
                    tb->pool,
                    &(tb->interpreter),
                    &(tb->interpreter_baton));


  return add_change(tb->root->fs, txn_id, tb->path,
                    svn_fs_fs__dag_get_id(tb->node),
                    svn_fs_path_change_modify, TRUE, FALSE, FALSE,
                    svn_node_file, SVN_INVALID_REVNUM, ((void*)0), pool);
}
