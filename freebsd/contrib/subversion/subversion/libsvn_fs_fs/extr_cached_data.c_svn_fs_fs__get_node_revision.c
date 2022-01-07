
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_12__ {int data; } ;
typedef TYPE_1__ svn_string_t ;
typedef int svn_fs_t ;
typedef int svn_fs_id_t ;
struct TYPE_13__ {int number; int revision; } ;
typedef TYPE_2__ svn_fs_fs__id_part_t ;
struct TYPE_14__ {scalar_t__ apr_err; } ;
typedef TYPE_3__ svn_error_t ;
typedef int node_revision_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 scalar_t__ SVN_ERR_FS_CORRUPT ;
 int SVN_FS_FS__ITEM_TYPE_NODEREV ;
 int dbg_log_access (int *,int ,int ,int *,int ,int *) ;
 TYPE_3__* get_node_revision_body (int **,int *,int const*,int *,int *) ;
 TYPE_3__* svn_error_createf (scalar_t__,TYPE_3__*,char*,int ) ;
 TYPE_3__* svn_error_trace (TYPE_3__*) ;
 TYPE_2__* svn_fs_fs__id_rev_item (int const*) ;
 TYPE_1__* svn_fs_fs__id_unparse (int const*,int *) ;

svn_error_t *
svn_fs_fs__get_node_revision(node_revision_t **noderev_p,
                             svn_fs_t *fs,
                             const svn_fs_id_t *id,
                             apr_pool_t *result_pool,
                             apr_pool_t *scratch_pool)
{
  const svn_fs_fs__id_part_t *rev_item = svn_fs_fs__id_rev_item(id);

  svn_error_t *err = get_node_revision_body(noderev_p, fs, id,
                                            result_pool, scratch_pool);
  if (err && err->apr_err == SVN_ERR_FS_CORRUPT)
    {
      svn_string_t *id_string = svn_fs_fs__id_unparse(id, scratch_pool);
      return svn_error_createf(SVN_ERR_FS_CORRUPT, err,
                               "Corrupt node-revision '%s'",
                               id_string->data);
    }

  SVN_ERR(dbg_log_access(fs,
                         rev_item->revision,
                         rev_item->number,
                         *noderev_p,
                         SVN_FS_FS__ITEM_TYPE_NODEREV,
                         scratch_pool));

  return svn_error_trace(err);
}
