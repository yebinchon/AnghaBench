
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_13__ {int fs; } ;
typedef TYPE_1__ trail_t ;
typedef int svn_fs_t ;
typedef int svn_fs_id_t ;
typedef int svn_error_t ;
struct TYPE_14__ {int mergeinfo_count; } ;
typedef TYPE_2__ node_revision_t ;
struct TYPE_15__ {scalar_t__ kind; } ;
typedef TYPE_3__ dag_node_t ;
typedef int apr_pool_t ;
typedef scalar_t__ apr_int64_t ;


 int APR_INT64_T_FMT ;
 int SVN_ERR (int ) ;
 int SVN_ERR_FS_CORRUPT ;
 int SVN_ERR_FS_NOT_MUTABLE ;
 int SVN_FS_BASE__MIN_MERGEINFO_FORMAT ;
 int * SVN_NO_ERROR ;
 int _ (char*) ;
 int apr_psprintf (int *,int ,int ) ;
 int * svn_error_createf (int ,int *,int ,...) ;
 int svn_fs_base__dag_check_mutable (TYPE_3__*,char const*) ;
 int * svn_fs_base__dag_get_fs (TYPE_3__*) ;
 int * svn_fs_base__dag_get_id (TYPE_3__*) ;
 int svn_fs_base__test_required_feature_format (int ,char*,int ) ;
 int svn_fs_bdb__get_node_revision (TYPE_2__**,int *,int const*,TYPE_1__*,int *) ;
 int * svn_fs_bdb__put_node_revision (int *,int const*,TYPE_2__*,TYPE_1__*,int *) ;
 scalar_t__ svn_node_file ;

svn_error_t *
svn_fs_base__dag_adjust_mergeinfo_count(dag_node_t *node,
                                        apr_int64_t count_delta,
                                        const char *txn_id,
                                        trail_t *trail,
                                        apr_pool_t *pool)
{
  node_revision_t *node_rev;
  svn_fs_t *fs = svn_fs_base__dag_get_fs(node);
  const svn_fs_id_t *id = svn_fs_base__dag_get_id(node);

  SVN_ERR(svn_fs_base__test_required_feature_format
          (trail->fs, "mergeinfo", SVN_FS_BASE__MIN_MERGEINFO_FORMAT));

  if (! svn_fs_base__dag_check_mutable(node, txn_id))
    return svn_error_createf(SVN_ERR_FS_NOT_MUTABLE, ((void*)0),
                             _("Attempted mergeinfo count change on "
                               "immutable node"));

  if (count_delta == 0)
    return SVN_NO_ERROR;

  SVN_ERR(svn_fs_bdb__get_node_revision(&node_rev, fs, id, trail, pool));
  node_rev->mergeinfo_count = node_rev->mergeinfo_count + count_delta;
  if ((node_rev->mergeinfo_count < 0)
      || ((node->kind == svn_node_file) && (node_rev->mergeinfo_count > 1)))
    return svn_error_createf(SVN_ERR_FS_CORRUPT, ((void*)0),
                             apr_psprintf(pool,
                                          _("Invalid value (%%%s) for node "
                                            "revision mergeinfo count"),
                                          APR_INT64_T_FMT),
                             node_rev->mergeinfo_count);

  return svn_fs_bdb__put_node_revision(fs, id, node_rev, trail, pool);
}
