
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {int data; } ;
typedef TYPE_1__ svn_string_t ;
typedef int svn_fs_x__noderev_t ;
typedef int svn_fs_x__id_t ;
typedef int svn_fs_t ;
struct TYPE_11__ {scalar_t__ apr_err; } ;
typedef TYPE_2__ svn_error_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 scalar_t__ SVN_ERR_FS_CORRUPT ;
 int SVN_FS_X__ITEM_TYPE_NODEREV ;
 int dbg__log_access (int *,int const*,int *,int ,int *) ;
 TYPE_2__* get_node_revision_body (int **,int *,int const*,int *,int *) ;
 TYPE_2__* svn_error_createf (scalar_t__,TYPE_2__*,char*,int ) ;
 TYPE_2__* svn_error_trace (TYPE_2__*) ;
 TYPE_1__* svn_fs_x__id_unparse (int const*,int *) ;

svn_error_t *
svn_fs_x__get_node_revision(svn_fs_x__noderev_t **noderev_p,
                            svn_fs_t *fs,
                            const svn_fs_x__id_t *id,
                            apr_pool_t *result_pool,
                            apr_pool_t *scratch_pool)
{
  svn_error_t *err = get_node_revision_body(noderev_p, fs, id,
                                            result_pool, scratch_pool);
  if (err && err->apr_err == SVN_ERR_FS_CORRUPT)
    {
      svn_string_t *id_string = svn_fs_x__id_unparse(id, scratch_pool);
      return svn_error_createf(SVN_ERR_FS_CORRUPT, err,
                               "Corrupt node-revision '%s'",
                               id_string->data);
    }

  SVN_ERR(dbg__log_access(fs, id, *noderev_p,
                          SVN_FS_X__ITEM_TYPE_NODEREV, scratch_pool));

  return svn_error_trace(err);
}
