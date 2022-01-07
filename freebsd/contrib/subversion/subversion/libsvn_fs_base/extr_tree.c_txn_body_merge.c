
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_12__ {int pool; } ;
typedef TYPE_2__ trail_t ;
typedef int svn_fs_t ;
typedef int svn_fs_id_t ;
typedef int svn_error_t ;
struct merge_args {int conflict; int * ancestor_node; int * source_node; TYPE_1__* txn; } ;
typedef int dag_node_t ;
struct TYPE_11__ {char* id; int * fs; } ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int merge (int ,char*,int *,int *,int *,char const*,int *,TYPE_2__*,int ) ;
 int * svn_fs_base__dag_get_id (int *) ;
 int svn_fs_base__dag_get_predecessor_count (int*,int *,TYPE_2__*,int ) ;
 int svn_fs_base__dag_txn_base_root (int **,int *,char const*,TYPE_2__*,int ) ;
 int svn_fs_base__dag_txn_root (int **,int *,char const*,TYPE_2__*,int ) ;
 scalar_t__ svn_fs_base__id_eq (int *,int *) ;
 int svn_fs_base__set_txn_base (int *,char const*,int const*,TYPE_2__*,int ) ;
 int svn_fs_base__set_txn_root (int *,char const*,int const*,TYPE_2__*,int ) ;
 int update_ancestry (int *,int const*,int *,char const*,char*,int,TYPE_2__*,int ) ;

__attribute__((used)) static svn_error_t *
txn_body_merge(void *baton, trail_t *trail)
{
  struct merge_args *args = baton;
  dag_node_t *source_node, *txn_root_node, *ancestor_node;
  const svn_fs_id_t *source_id;
  svn_fs_t *fs = args->txn->fs;
  const char *txn_id = args->txn->id;

  source_node = args->source_node;
  ancestor_node = args->ancestor_node;
  source_id = svn_fs_base__dag_get_id(source_node);

  SVN_ERR(svn_fs_base__dag_txn_root(&txn_root_node, fs, txn_id,
                                    trail, trail->pool));

  if (ancestor_node == ((void*)0))
    {
      SVN_ERR(svn_fs_base__dag_txn_base_root(&ancestor_node, fs,
                                             txn_id, trail, trail->pool));
    }

  if (svn_fs_base__id_eq(svn_fs_base__dag_get_id(ancestor_node),
                         svn_fs_base__dag_get_id(txn_root_node)))
    {
      SVN_ERR(svn_fs_base__set_txn_base(fs, txn_id, source_id,
                                        trail, trail->pool));
      SVN_ERR(svn_fs_base__set_txn_root(fs, txn_id, source_id,
                                        trail, trail->pool));
    }
  else
    {
      int pred_count;

      SVN_ERR(merge(args->conflict, "/", txn_root_node, source_node,
                    ancestor_node, txn_id, ((void*)0), trail, trail->pool));

      SVN_ERR(svn_fs_base__dag_get_predecessor_count(&pred_count,
                                                     source_node, trail,
                                                     trail->pool));





      SVN_ERR(update_ancestry(fs, source_id,
                              svn_fs_base__dag_get_id(txn_root_node),
                              txn_id, "/", pred_count, trail, trail->pool));
      SVN_ERR(svn_fs_base__set_txn_base(fs, txn_id, source_id,
                                        trail, trail->pool));
    }

  return SVN_NO_ERROR;
}
